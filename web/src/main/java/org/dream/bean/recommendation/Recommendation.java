package org.dream.bean.recommendation;

import java.io.Serializable;
import java.util.Date;

import com.google.gson.annotations.Expose;

/**
 * 股票推荐
 * 
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public class Recommendation implements Serializable {
    private static final long serialVersionUID = 1L;

    @Expose
    private int               id;
    
    @Expose
    private double            zs;                    // 指数
    
    @Expose
    private double            szZs;                  // 上证指数

    @Expose
    private double            upsDowns;             // 涨跌幅

    @Expose
    private double            szUpsDowns;           // 上证指数涨跌幅

    @Expose
    private String            ps;                   // 备注，大盘判断

    @Expose
    private String            stocks;               // 股票名称

    @Expose
    private Date              createTime;           // 创建时间

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @return the upsDowns
     */
    public double getUpsDowns() {
        return upsDowns;
    }

    /**
     * @param upsDowns the upsDowns to set
     */
    public void setUpsDowns(double upsDowns) {
        this.upsDowns = upsDowns;
    }

    /**
     * @return the szUpsDowns
     */
    public double getSzUpsDowns() {
        return szUpsDowns;
    }

    /**
     * @param szUpsDowns the szUpsDowns to set
     */
    public void setSzUpsDowns(double szUpsDowns) {
        this.szUpsDowns = szUpsDowns;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the ps
     */
    public String getPs() {
        return ps;
    }

    /**
     * @param ps the ps to set
     */
    public void setPs(String ps) {
        this.ps = ps;
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
     * @return the stocks
     */
    public String getStocks() {
        return stocks;
    }

    /**
     * @param stocks the stocks to set
     */
    public void setStocks(String stocks) {
        this.stocks = stocks;
    }

    /**
     * @return the zs
     */
    public double getZs() {
        return zs;
    }

    /**
     * @param zs the zs to set
     */
    public void setZs(double zs) {
        this.zs = zs;
    }

    /**
     * @return the szZs
     */
    public double getSzZs() {
        return szZs;
    }

    /**
     * @param szZs the szZs to set
     */
    public void setSzZs(double szZs) {
        this.szZs = szZs;
    }
}
