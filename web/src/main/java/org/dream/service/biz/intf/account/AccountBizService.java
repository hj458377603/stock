package org.dream.service.biz.intf.account;

import org.dream.bean.account.Account;

/**
 * 账户相关服务
 * 
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public interface AccountBizService {
    /**
     * 登录
     *
     * @param email
     * @param pwd
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    Account login(String email, String pwd);

    /**
     * 获取账户详情
     *
     * @param email
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    Account getAccountInfo(String email);

    /**
     * 注册
     *
     * @param email
     * @param pwd
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    boolean register(String email, String pwd);
    
    /**
     * 账户是否存在
     *
     * @param email
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    boolean isExist(String email);
    
    /**
     * 账户更新
     *
     * @param account
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    boolean update(Account account);
    
    /**
     * 注销账户
     *
     * @param accessToken
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    boolean logout(String accessToken);
    
    /**
     * 修改密码
     * 
     * @param email
     * @param oldPwd
     * @param newPwd
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    int updatePwd(String email,String oldPwd,String newPwd);
}
