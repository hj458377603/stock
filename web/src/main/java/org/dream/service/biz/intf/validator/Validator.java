package org.dream.service.biz.intf.validator;

import org.dream.bean.exception.StockException;

public interface Validator<T> {
    void validate(T value) throws StockException;

    DataType getSupportedType();
}
