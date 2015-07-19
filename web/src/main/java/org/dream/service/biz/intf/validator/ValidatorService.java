package org.dream.service.biz.intf.validator;

import org.dream.bean.exception.StockException;

public interface ValidatorService<T> {
    void validate(DataType dataType, T value) throws StockException;
}
