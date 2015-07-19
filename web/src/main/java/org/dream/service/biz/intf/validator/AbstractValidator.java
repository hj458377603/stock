package org.dream.service.biz.intf.validator;

import java.util.HashMap;
import java.util.Map;

import org.dream.bean.errorcode.ErrorCode;
import org.dream.bean.exception.StockException;
import org.dream.service.biz.intf.validator.rule.ValidateRule;

public abstract class AbstractValidator<T> implements Validator<T> {

    protected Map<ValidateRule<T>, ErrorCode> validateRuleList = new HashMap<ValidateRule<T>, ErrorCode>();

    public void registerRule(ValidateRule<T> validatorRule, ErrorCode errorInfo) {
        this.validateRuleList.put(validatorRule, errorInfo);
    }

    public void validate(T value) throws StockException {
        for (Map.Entry<ValidateRule<T>, ErrorCode> validateRuleStringEntry : validateRuleList
                .entrySet()) {
            ValidateRule<T> validate = validateRuleStringEntry.getKey();
            ErrorCode errorInfo = validateRuleStringEntry.getValue();
            try {
                validate.validate(value);
            } catch (Exception ex) {
                throw new StockException(errorInfo);
            }
        }
    }
}
