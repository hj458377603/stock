package org.dream.service.biz.intf.validator.rule;

public interface ValidateRule<T> {
    void validate(T value) throws Exception;
}
