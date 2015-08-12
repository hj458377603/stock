package org.dream.bean.response;

import com.google.gson.annotations.Expose;

/**
 * 返回实体
 *
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 * @param <T> 数据
 */
public class ResponseBean<T> {
    @Expose
    private String res;

    @Expose
    private String msg;

    @Expose
    private T      data;

    public ResponseBean(String res, String msg, T data) {
        this.res = res;
        this.msg = msg;
        this.data = data;
    }

    /**
     * @return the res
     */
    public String getRes() {
        return res;
    }

    /**
     * @param res the res to set
     */
    public void setRes(String res) {
        this.res = res;
    }

    /**
     * @return the msg
     */
    public String getMsg() {
        return msg;
    }

    /**
     * @param msg the msg to set
     */
    public void setMsg(String msg) {
        this.msg = msg;
    }

    /**
     * @return the data
     */
    public T getData() {
        return data;
    }

    /**
     * @param data the data to set
     */
    public void setData(T data) {
        this.data = data;
    }

}
