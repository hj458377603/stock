package org.dream.service.biz.service.account;

import org.dream.bean.account.Account;
import org.dream.bean.errorcode.ErrorCode;
import org.dream.bean.exception.StockException;
import org.dream.service.base.intf.account.AccountService;
import org.dream.service.biz.intf.account.AccountBizService;
import org.dream.service.biz.intf.validator.DataType;
import org.dream.service.biz.intf.validator.ValidatorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beust.jcommander.ParameterException;

@Service
public class AccountBizServiceImpl implements AccountBizService {

    @Autowired
    AccountService   accountService;

    @Autowired
    ValidatorService validatorService;

    public Account login(String email, String pwd) {
        Account result = accountService.login(email, pwd);
        if (result == null) {
            throw new StockException(ErrorCode.ACCOUNT_LOGIN_ERROR);// 登录失败
        }
        return result;
    }

    public boolean register(String email, String pwd) {
        // 校验参数
        validatorService.validate(DataType.EMAIL, email);
        validatorService.validate(DataType.PWD, pwd);
        boolean result = accountService.register(email, pwd);

        if (!result) {
            throw new StockException(ErrorCode.ACCOUNT_REGISTER_ERROR);// 注册失败
        }
        return result;
    }

    public Account getAccountInfo(String email) {
        return null;
    }

    public boolean isExist(String email) {
        return accountService.isExist(email);
    }

    public boolean update(Account account) {
        return false;
    }

    public boolean logout(String accessToken) {
        return false;
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
        validatorService.validate(DataType.PWD, newPwd);

        int result = accountService.updatePwd(email, oldPwd, newPwd);
        if (result == 0) {
            throw new StockException(ErrorCode.ACCOUNT_UPDATE_PWD_ERROR);
        } else if (result == -1) {
            throw new StockException(ErrorCode.ACCOUNT_OLD_PWD_ERROR);
        }
        return result;
    }
}
