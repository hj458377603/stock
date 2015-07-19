package org.dream.bean.account;

import java.util.Date;

/**
 * 账户相关
 *
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public class Account {
    private int id;
    private String email;
    private String pwd;
    private int state;
    private Date authDate;
    private int availableDays;
    private Date createTime;
    private Date modifyTime;
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }
    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }
    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }
    /**
     * @return the pwd
     */
    public String getPwd() {
        return pwd;
    }
    /**
     * @param pwd the pwd to set
     */
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
    /**
     * @return the state
     */
    public int getState() {
        return state;
    }
    /**
     * @param state the state to set
     */
    public void setState(int state) {
        this.state = state;
    }
    /**
     * @return the authDate
     */
    public Date getAuthDate() {
        return authDate;
    }
    /**
     * @param authDate the authDate to set
     */
    public void setAuthDate(Date authDate) {
        this.authDate = authDate;
    }
    /**
     * @return the availableDays
     */
    public int getAvailableDays() {
        return availableDays;
    }
    /**
     * @param availableDays the availableDays to set
     */
    public void setAvailableDays(int availableDays) {
        this.availableDays = availableDays;
    }
    /**
     * @return the createTime
     */
    public Date getCreateTime() {
        return createTime;
    }
    /**
     * @param createTime the createTime to set
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    /**
     * @return the modifyTime
     */
    public Date getModifyTime() {
        return modifyTime;
    }
    /**
     * @param modifyTime the modifyTime to set
     */
    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }
    
}
