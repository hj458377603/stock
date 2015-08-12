package org.dream.bean.constants;

/**
 * 常量
 */
public class ConfigConstants {
    public static final String ACCESS_TOKEN              = "ACCESS_TOKEN";

    public static final long   CACHE_EXPIRE_MILI_SECONDS = 3 * 24 * 60 * 60 * 1000;         // 3天

    public static final String FILE_FOLDER               = "/img/";                         // 上传图片文件夹

    public static final int    EMAIL_LENGTH              = 40;                              // email长度

    public static final int    PWD_MIN_LENGTH            = 6;                               // 密码最小长度

    public static final int    PWD_MAX_LENGTH            = 40;                              // 密码最大长度

    public static final String DOMAIN                    = "http://localhost:8080";         // 域名

    public static final String ROOT_CONTEXT              = "/web";                          // 根上下文

    public static final String HOME_PAGE                 = DOMAIN + "/web/home";    // 首页

    public static final String LOGIN_PAGE                = DOMAIN + "/web/login";   // 登录页面

    public static final String REG_PAGE                  = DOMAIN + "/web/reg";     // 注册页面

    public static final String RESET_PWD_PAGE            = DOMAIN + "/web/resetPwd"; // 重置密码

    public static final String MSG                       = "msg";

    public static final String ACCOUNT                   = "account";
}
