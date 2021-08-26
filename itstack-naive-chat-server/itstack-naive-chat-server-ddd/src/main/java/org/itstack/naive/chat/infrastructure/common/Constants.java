package org.itstack.naive.chat.infrastructure.common;

/** 博 客：http://bugstack.cn 公众号：bugstack虫洞栈 | 沉淀、分享、成长，让自己和他人都能有所收获！ create by 小傅哥 on @2020 */
public class Constants {

  public enum ResponseCode {
    /** 成功 */
    SUCCESS("0000", "成功"),
    /** 未知失败 */
    UN_ERROR("0001", "未知失败"),
    /** 非法参数 */
    ILLEGAL_PARAMETER("0002", "非法参数"),
    /** 主键冲突 */
    INDEX_DUP("0003", "主键冲突");

    private final String code;
    private final String info;

    ResponseCode(String code, String info) {
      this.code = code;
      this.info = info;
    }

    public String getCode() {
      return code;
    }

    public String getInfo() {
      return info;
    }
  }

  public enum TalkType {
    /** 好友 */
    Friend(0, "好友"),
    /** 组群 */
    Group(1, "群组");

    private final Integer code;
    private final String info;

    TalkType(Integer code, String info) {
      this.code = code;
      this.info = info;
    }

    public Integer getCode() {
      return code;
    }

    public String getInfo() {
      return info;
    }
  }

  public enum MsgType {
    /** 自己 */
    Myself(0, "自己"),
    /** 好友 */
    Friend(1, "好友");

    private final Integer code;
    private final String info;

    MsgType(Integer code, String info) {
      this.code = code;
      this.info = info;
    }

    public Integer getCode() {
      return code;
    }

    public String getInfo() {
      return info;
    }
  }
}
