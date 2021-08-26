package org.itstack.naive.chat.client;

import com.google.common.util.concurrent.ThreadFactoryBuilder;
import io.netty.channel.Channel;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javafx.stage.Stage;
import org.apache.commons.lang3.concurrent.BasicThreadFactory;
import org.itstack.naive.chat.client.application.UIService;
import org.itstack.naive.chat.client.event.ChatEvent;
import org.itstack.naive.chat.client.event.LoginEvent;
import org.itstack.naive.chat.client.infrastructure.util.CacheUtil;
import org.itstack.naive.chat.client.socket.NettyClient;
import org.itstack.naive.chat.protocol.login.ReconnectRequest;
import org.itstack.naive.chat.ui.view.chat.ChatController;
import org.itstack.naive.chat.ui.view.chat.IChatMethod;
import org.itstack.naive.chat.ui.view.login.ILoginMethod;
import org.itstack.naive.chat.ui.view.login.LoginController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/** 博 客：http://bugstack.cn 公众号：bugstack虫洞栈 | 沉淀、分享、成长，让自己和他人都能有所收获！ create by 小傅哥 on @2020 */
public class Application extends javafx.application.Application {

  private final Logger logger = LoggerFactory.getLogger(Application.class);

  private final ThreadFactory namedThreadFactory =
      new ThreadFactoryBuilder().setNameFormat("chat-client-pool-%d").build();
  private final ExecutorService executorService =
      new ThreadPoolExecutor(
          2,
          5,
          0L,
          TimeUnit.MILLISECONDS,
          new LinkedBlockingQueue<Runnable>(1024),
          namedThreadFactory,
          new ThreadPoolExecutor.AbortPolicy());

  ScheduledExecutorService scheduledExecutorService =
      new ScheduledThreadPoolExecutor(
          2,
          new BasicThreadFactory.Builder()
              .namingPattern("chat-client-schedule-pool-%d")
              .daemon(true)
              .build());

  @Override
  public void start(Stage primaryStage) throws Exception {
    // 1. 启动窗口
    IChatMethod chat = new ChatController(new ChatEvent());
    ILoginMethod login = new LoginController(new LoginEvent(), chat);
    login.doShow();

    UIService uiService = new UIService();
    uiService.setChat(chat);
    uiService.setLogin(login);

    // 2. 启动socket连接
    logger.info("NettyClient连接服务开始 inetHost：{} inetPort：{}", "127.0.0.1", 7397);
    NettyClient nettyClient = new NettyClient(uiService);
    Future<Channel> future = executorService.submit(nettyClient);
    Channel channel = future.get();
    if (null == channel) {
      throw new RuntimeException("netty client start error channel is null");
    }

    while (!nettyClient.isActive()) {
      logger.info("NettyClient启动服务 ...");
      Thread.sleep(500);
    }
    logger.info("NettyClient连接服务完成 {}", channel.localAddress());

    // Channel状态定时巡检；3秒后每5秒执行一次
    scheduledExecutorService.scheduleAtFixedRate(
        () -> {
          while (!nettyClient.isActive()) {
            System.out.println("通信管道巡检：通信管道状态 " + nettyClient.isActive());
            try {
              System.out.println("通信管道巡检：断线重连[Begin]");
              Channel freshChannel = executorService.submit(nettyClient).get();
              if (null == CacheUtil.userId) {
                continue;
              }
              freshChannel.writeAndFlush(new ReconnectRequest(CacheUtil.userId));
            } catch (InterruptedException | ExecutionException e) {
              System.out.println("通信管道巡检：断线重连[Error]");
            }
          }
        },
        3,
        5,
        TimeUnit.SECONDS);
  }

  public static void main(String[] args) {
    launch(args);
  }
}
