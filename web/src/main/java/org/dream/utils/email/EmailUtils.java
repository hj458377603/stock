package org.dream.utils.email;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

/**
 * Email工具类
 * 
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public class EmailUtils {
    public static void sendEmail() {
        SimpleEmail email = new SimpleEmail();
        // smtp host
        email.setHostName("mail.live.com");
        // 登陆邮件服务器的用户名和密码
        email.setAuthentication("hj458377603@hotmail.com", "hj1181526248");
        try {
            // 接收人
            email.addTo("458377603@qq.com", "QQMail");
            // 发送人
            email.setFrom("hj458377603@hotmail.com", "Hotmail");
            // 标题
            email.setSubject("Test message");
            // 邮件内容
            email.setMsg("This is a simple test of commons-email");
            // 发送
            email.send();
        } catch (EmailException e) {
            e.printStackTrace();
        }
    }
}
