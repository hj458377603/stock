package org.dream.bean.errorcode;

public enum ErrorCode {
    PARA_EMAIL_ERROR("PARA_0001", "Email格式不正确"),
    PARA_PWD_ERROR("PARA_0002", "密码格式不正确"),
    PARA_NICKNAME_ERROR("PARA_0003","昵称格式不正确"),
    PARA_TYPEID_ERROR("PARA_0004","TypeId参数错误"),
    PARA_IMAGEURL_ERROR("PARA_0005","图片地址参数不正确"),
    PARA_TEXTCONTENT_ERROR("PARA_0006","文本内容参数不正确"), 
    PARA_COMMENT_ERROR("PARA_0007","评论内容格式不正确"), 
    
    ACCOUNT_UNAUTHORIZED_ERROR("10000","未登录"),
    ACCOUNT_LOGIN_ERROR("10003","登录失败"),
    ACCOUNT_REGISTER_ERROR("10004","注册失败"),
    ACCOUNT_EMAIL_DUPLICATE_ERROR("10005","邮箱已经被注册"),
    ACCOUNT_UPDATE_ERROR("10006","账户修改失败"),
    ACCOUNT_LOGOUT_ERROR("10007","账户注销失败"),
    ACCOUNT_MODIFY_IMG_ERROR("10008","修改头像失败"),
    ACCOUNT_OLD_PWD_ERROR("10009","原密码不正确"),
    ACCOUNT_UPDATE_PWD_ERROR("10010","修改密码失败"),
    
    RES_LIKE_DUPLICATE_ERROR("20001","已经点过赞"),
    
    COMMENT_ADD_ERROR("30001","评论失败"),

    SYSTEM_SUCCESS("0","成功"),
    SYSTEM_ERROR("00001","系统异常"),
    SYSTEM_400_ERROR("00002","请求出错"),
    SYSTEM_405_ERROR("00003","用来访问本页面的 HTTP谓词不被允许");
    
    private String code;

    // 成员变量
    private String msg;

    // 构造方法
    private ErrorCode(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getCode() {
        return this.code;
    }
}
