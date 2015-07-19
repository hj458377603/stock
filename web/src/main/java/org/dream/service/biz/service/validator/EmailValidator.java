package org.dream.service.biz.service.validator;

import org.dream.bean.errorcode.ErrorCode;
import org.dream.service.biz.intf.validator.AbstractValidator;
import org.dream.service.biz.intf.validator.DataType;
import org.dream.service.biz.intf.validator.rule.MaxLengthValidateRule;
import org.dream.service.biz.intf.validator.rule.NotNullValidateRule;
import org.dream.service.biz.intf.validator.rule.RegxValidateRule;
import org.springframework.stereotype.Service;

/**
 * Email校验器
 * 
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
@Service
public class EmailValidator extends AbstractValidator {

    public DataType getSupportedType() {
        return DataType.EMAIL;
    }

    public EmailValidator() {
        this.registerRule(new NotNullValidateRule(), ErrorCode.PARA_EMAIL_ERROR);
        this.registerRule(new RegxValidateRule("\\w+([-.]\\w+)*@\\w+([-.]\\w+)*"),
                ErrorCode.PARA_EMAIL_ERROR);
        this.registerRule(new MaxLengthValidateRule(128), ErrorCode.PARA_EMAIL_ERROR);
    }

}
