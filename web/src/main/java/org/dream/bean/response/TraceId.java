package org.dream.bean.response;

import com.google.gson.annotations.Expose;

/**
 * 业务失败Id
 *
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public class TraceId {
    @Expose
    private String traceId;
    
    public TraceId(String traceId){
        this.traceId=traceId;
    }
    
    /**
     * @return the traceId
     */
    public String getTraceId() {
        return traceId;
    }

    /**
     * @param traceId the traceId to set
     */
    public void setTraceId(String traceId) {
        this.traceId = traceId;
    }
}
