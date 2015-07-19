package org.dream.service.base.service.account;

import java.util.Date;
import java.util.HashMap;

import org.apache.commons.lang3.StringUtils;
import org.dream.bean.account.Account;
import org.dream.dao.account.AccountDao;
import org.dream.service.base.intf.account.AccountService;
import org.dream.utils.cache.CacheUtils;
import org.dream.utils.security.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements AccountService {
    
    @Value("${domain}")
    private String domain;
    
    @Autowired
    AccountDao accountDao;

    public Account login(String email, String pwd) {
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("email", email);
        System.out.println(domain);
        // pwd加密
        String md5Pwd = SecurityUtils.md5(pwd);
        map.put("pwd", md5Pwd);
        return accountDao.queryByUserNameAndPwd(map);
    }

    public boolean register(String email, String pwd) {
        Account account = new Account();
        account.setCreateTime(new Date());
        account.setEmail(email);
        String md5Pwd = SecurityUtils.md5(pwd);
        account.setPwd(md5Pwd);
        return accountDao.add(account) == 1 ? true : false;
    }

    public Account getAccountInfo(String email) {
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("email", email);
        return accountDao.queryByEmail(map);
    }

    public boolean isExist(String email) {
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("email", email);
        return accountDao.isExsit(map) == 1 ? true : false;
    }

    public boolean update(Account account) {
        if (!StringUtils.isEmpty(account.getPwd())) {
            String md5Pwd = SecurityUtils.md5(account.getPwd());
            account.setPwd(md5Pwd);
        }
        account.setModifyTime(new Date());
        return accountDao.update(account) == 1 ? true : false;
    }

    public boolean logout(String accessToken) {
        return CacheUtils.remove(accessToken);
    }

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
    public int updatePwd(String email, String oldPwd, String newPwd) {
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("email", email);
        String md5Pwd = SecurityUtils.md5(oldPwd);// pwd加密
        map.put("pwd", md5Pwd);
        
        Account account = accountDao.queryByUserNameAndPwd(map);// 先比较原密码,修改新密码
        
        if (account != null && !StringUtils.isEmpty(account.getEmail())) {
            String md5NewPwd = SecurityUtils.md5(newPwd);// pwd加密
            account.setPwd(md5NewPwd);
            return accountDao.update(account) > 0 ? 1 : 0;
        }
        return -1;
    }
}
