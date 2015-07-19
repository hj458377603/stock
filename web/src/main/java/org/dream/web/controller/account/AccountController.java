package org.dream.web.controller.account;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.dream.bean.account.Account;
import org.dream.bean.constants.ConfigConstants;
import org.dream.bean.constants.MsgConstants;
import org.dream.bean.errorcode.ErrorCode;
import org.dream.bean.exception.StockException;
import org.dream.bean.recommendation.Recommendation;
import org.dream.service.base.intf.recommendation.RecommendationService;
import org.dream.service.biz.intf.account.AccountBizService;
import org.dream.web.controller.base.BaseController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
@Controller
@RequestMapping("/")
public class AccountController extends BaseController {
    private static Logger    logger   = LoggerFactory.getLogger(AccountController.class);

    private static final int PAGESIZE = 10;

    @Autowired
    AccountBizService        accountBizService;

    @Autowired
    RecommendationService    recommendationService;

    /**
     * 首页
     * 
     * @param request
     * @param response
     * @param modelMap
     * @param httpSession
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap,
            HttpSession httpSession) {
        Account account = (Account) httpSession.getAttribute("session");
        if (account != null) {
            modelMap.addAttribute(ConfigConstants.ACCOUNT, account);
        }
        List<Recommendation> recommendations = recommendationService.queryByPage(1, PAGESIZE);
        modelMap.addAttribute("recommendations", recommendations);
        return "index.ftl";
    }

    /**
     * 登录
     * 
     * @param email
     * @param pwd
     * @param request
     * @param response
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @RequestMapping(value = "/login")
    public String login(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap) {
        String msg = request.getParameter(ConfigConstants.MSG);

        modelMap.addAttribute("msg", StringUtils.isEmpty(msg) ? "" : msg);
        return "login.ftl";
    }

    /**
     * 首页登录
     * 
     * @param email
     * @param pwd
     * @param request
     * @param response
     * @throws IOException
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @RequestMapping(value = "/home", method = RequestMethod.POST)
    public void doLogin(String email, String pwd, HttpServletRequest request,
            HttpServletResponse response, ModelMap modelMap, HttpSession httpSession)
            throws IOException {
        try {
            Account result = accountBizService.login(email, pwd);
            httpSession.setAttribute(ConfigConstants.ACCOUNT, result);
            modelMap.addAttribute(ConfigConstants.ACCOUNT, result);
            response.sendRedirect(ConfigConstants.HOME_PAGE);
        } catch (StockException e) {
            response.sendRedirect(ConfigConstants.LOGIN_PAGE + "?msg=email_or_pwd_error");
        } catch (IOException e) {
            logger.error("doLogin:", e);
        }
    }

    /**
     * 注册
     * 
     * @param email
     * @param pwd
     * @param request
     * @param response
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @RequestMapping(value = "/reg", method = RequestMethod.GET)
    public String register(HttpServletRequest request, HttpServletResponse response,
            ModelMap modelMap) {
        String msg = request.getParameter("msg");
        if (StringUtils.isEmpty(msg)) {
            msg = "";
        } else {
            if (msg.equals("email_error")) {
                msg = "邮箱格式错误";
            } else if (msg.equals("pwd_error")) {
                msg = "密码格式错误";
            } else if (msg.equals("success")) {
                msg = "注册成功";
            } else if (msg.equals("unknown_error")) {
                msg = "注册失败";
            }
        }
        modelMap.addAttribute("msg", msg);
        return "reg.ftl";
    }

    /**
     * 注册
     * 
     * @param email
     * @param pwd
     * @param request
     * @param response
     * @throws IOException
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @RequestMapping(value = "/reg", method = RequestMethod.POST)
    public void register(String email, String pwd, HttpServletRequest request,
            HttpServletResponse response, HttpSession httpSession) throws IOException {
        try {
            accountBizService.register(email, pwd);
            Account account = new Account();
            account.setEmail(email);
            httpSession.setAttribute("account", account);
            response.sendRedirect(ConfigConstants.HOME_PAGE);// 注册成功
        } catch (StockException e) {
            logger.debug("failed:" + e.getError().getMsg());

            if (ErrorCode.PARA_EMAIL_ERROR == e.getError()) {
                response.sendRedirect(ConfigConstants.REG_PAGE + "?msg=email_error");// Email格式错误
            } else if (ErrorCode.PARA_PWD_ERROR == e.getError()) {
                response.sendRedirect(ConfigConstants.REG_PAGE + "?msg=pwd_error");// pwd格式错误
            } else if (ErrorCode.ACCOUNT_REGISTER_ERROR == e.getError()) {// 注册失败
                response.sendRedirect(ConfigConstants.REG_PAGE + "?msg=unknown_error");
            }
        }
    }

    @RequestMapping(value = "/isEmailExsit", method = RequestMethod.GET)
    public void isEmailExsit(String email, HttpServletRequest request, HttpServletResponse response) {
        boolean res = accountBizService.isExist(email);
        ajaxJson(response, String.valueOf(res));
    }

    /**
     * 账户注销
     * 
     * @param account
     * @param request
     * @param response
     * @throws IOException
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @RequestMapping("/logout")
    public void logout(Account account, HttpServletRequest request, HttpServletResponse response,
            HttpSession httpSession) throws IOException {
        httpSession.removeAttribute("account");
        response.sendRedirect(ConfigConstants.HOME_PAGE);
    }

    @RequestMapping(value = "/resetPwd", method = RequestMethod.GET)
    public String resetPwd(HttpServletRequest request, HttpServletResponse response,
            HttpSession httpSession) {
        Object account = httpSession.getAttribute("account");
        try {
            if (account == null) {
                response.sendRedirect(ConfigConstants.HOME_PAGE);
            } else {
                return "reset_pwd.ftl";
            }
        } catch (IOException e) {
            logger.error("resetPwd:", e);
        }
        return null;
    }

    @RequestMapping(value = "/resetPwd", method = RequestMethod.POST)
    public String resetPwd(String oldPwd, String newPwd, HttpServletRequest request,
            HttpServletResponse response, HttpSession httpSession, ModelMap modelMap) {
        String msg = "";
        try {
            Account account = (Account) httpSession.getAttribute("account");
            if (account == null) {// 未登录
                response.sendRedirect(ConfigConstants.HOME_PAGE);
            } else {
                accountBizService.updatePwd(account.getEmail(), oldPwd, newPwd);// 重置成功
                response.sendRedirect(ConfigConstants.HOME_PAGE);
            }
        } catch (StockException e) {
            if (ErrorCode.PARA_PWD_ERROR == e.getError()) {
                msg = MsgConstants.ACCOUNT_NEW_PWD_ERROR;// 新密码格式错误
            } else if (ErrorCode.ACCOUNT_OLD_PWD_ERROR == e.getError()) {
                msg = MsgConstants.ACCOUNT_OLD_PWD_ERROR;// 原密码错误
            } else if (ErrorCode.ACCOUNT_UPDATE_PWD_ERROR == e.getError()) {
                msg = MsgConstants.ACCOUNT_PWD_RESET_ERROR;// 密码重置失败
            }
            modelMap.addAttribute("msg", msg);
            return "reset_pwd.ftl";
        } catch (IOException e) {
            logger.error("resetPwd:", e);
        }
        return null;
    }
}
