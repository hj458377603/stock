package org.dream.bean.exception;

import org.dream.bean.errorcode.ErrorCode;

/**
 * 参数错误
 *
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public class StockException extends RuntimeException {
    /**
     */
    private static final long serialVersionUID = -3967080798852326150L;

    private ErrorCode         error;

    public StockException(ErrorCode error) {
        super(error.getMsg());
        this.error = error;
    }

    public ErrorCode getError() {
        return error;
    }

    public void setError(ErrorCode error) {
        this.error = error;
    }
}