package org.dream.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 〈一句话功能简述〉<br>
 * 〈功能详细描述〉
 * 
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public class StockStringUtils {
    public static boolean isEmailValid(String email, int length) {
        if (null == email || "".equals(email) || email.length() > length){
            return false;
        }
        Pattern p = Pattern.compile("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");// 复杂匹配
        Matcher m = p.matcher(email);
        return m.matches();
    }

    public static boolean isPwdValid(String pwd, int minLength, int maxLength) {
        if (null == pwd || "".equals(pwd) || pwd.length() > maxLength || pwd.length() < minLength){
            return false;
        }
        return true;
    }
}
