package org.dream.service.biz.service.validator;

import org.dream.bean.errorcode.ErrorCode;
import org.dream.service.biz.intf.validator.AbstractValidator;
import org.dream.service.biz.intf.validator.DataType;
import org.dream.service.biz.intf.validator.rule.MaxLengthValidateRule;
import org.dream.service.biz.intf.validator.rule.MinLengthValidateRule;
import org.dream.service.biz.intf.validator.rule.NotNullValidateRule;
import org.springframework.stereotype.Service;

@Service
public class PwdValidator extends AbstractValidator {

    public DataType getSupportedType() {
        return DataType.PWD;
    }

    public PwdValidator() {
        this.registerRule(new NotNullValidateRule(), ErrorCode.PARA_PWD_ERROR);
        this.registerRule(new MaxLengthValidateRule(20), ErrorCode.PARA_PWD_ERROR);
        this.registerRule(new MinLengthValidateRule(6), ErrorCode.PARA_PWD_ERROR);
    }
}
