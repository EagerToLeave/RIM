package org.itstack.naive.chat.socket;

import io.netty.channel.ChannelInitializer;
import io.netty.channel.socket.SocketChannel;
import org.itstack.naive.chat.application.UserService;
import org.itstack.naive.chat.codec.ObjDecoder;
import org.itstack.naive.chat.codec.ObjEncoder;
import org.itstack.naive.chat.socket.handler.AddFriendHandler;
import org.itstack.naive.chat.socket.handler.DelTalkHandler;
import org.itstack.naive.chat.socket.handler.LoginHandler;
import org.itstack.naive.chat.socket.handler.MsgGroupHandler;
import org.itstack.naive.chat.socket.handler.MsgHandler;
import org.itstack.naive.chat.socket.handler.ReconnectHandler;
import org.itstack.naive.chat.socket.handler.SearchFriendHandler;
import org.itstack.naive.chat.socket.handler.TalkNoticeHandler;

/** 博 客：http://bugstack.cn 公众号：bugstack虫洞栈 | 沉淀、分享、成长，让自己和他人都能有所收获！ create by 小傅哥 on @2020 */
public class MyChannelInitializer extends ChannelInitializer<SocketChannel> {

  private UserService userService;

  public MyChannelInitializer(UserService userService) {
    this.userService = userService;
  }

  @Override
  protected void initChannel(SocketChannel channel) throws Exception {
    // 对象传输处理[解码]
    channel.pipeline().addLast(new ObjDecoder());
    // 在管道中添加我们自己的接收数据实现方法
    channel.pipeline().addLast(new AddFriendHandler(userService));
    channel.pipeline().addLast(new DelTalkHandler(userService));
    channel.pipeline().addLast(new LoginHandler(userService));
    channel.pipeline().addLast(new MsgGroupHandler(userService));
    channel.pipeline().addLast(new MsgHandler(userService));
    channel.pipeline().addLast(new ReconnectHandler(userService));
    channel.pipeline().addLast(new SearchFriendHandler(userService));
    channel.pipeline().addLast(new TalkNoticeHandler(userService));
    // 对象传输处理[编码]
    channel.pipeline().addLast(new ObjEncoder());
  }
}
