package org.itstack.naive.chat;

import com.google.common.util.concurrent.ThreadFactoryBuilder;
import io.netty.channel.Channel;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Resource;
import org.itstack.naive.chat.socket.NettyServer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

/** 博 客：http://bugstack.cn 公众号：bugstack虫洞栈 | 沉淀、分享、成长，让自己和他人都能有所收获！ create by 小傅哥 on @2020 */
@SpringBootApplication
@Configuration
@ImportResource(locations = {"classpath:spring-config.xml"})
public class Application extends SpringBootServletInitializer implements CommandLineRunner {

  private final Logger logger = LoggerFactory.getLogger(Application.class);

  @Resource private NettyServer nettyServer;

  private final ThreadFactory namedThreadFactory =
      new ThreadFactoryBuilder().setNameFormat("netty-server-pool-%d").build();
  private final ExecutorService executorService =
      new ThreadPoolExecutor(
          5,
          10,
          0L,
          TimeUnit.MILLISECONDS,
          new LinkedBlockingQueue<Runnable>(1024),
          namedThreadFactory,
          new ThreadPoolExecutor.AbortPolicy());

  @Override
  protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
    return builder.sources(Application.class);
  }

  public static void main(String[] args) {
    SpringApplication.run(Application.class, args);
  }

  @Override
  public void run(String... args) throws Exception {
    logger.info("NettyServer启动服务开始 port：7397");
    Future<Channel> future = executorService.submit(nettyServer);
    Channel channel = future.get();
    if (null == channel) {
      throw new RuntimeException("netty server start error channel is null");
    }

    while (!channel.isActive()) {
      logger.info("NettyServer启动服务 ...");
      Thread.sleep(500);
    }

    logger.info("NettyServer启动服务完成 {}", channel.localAddress());
  }
}
