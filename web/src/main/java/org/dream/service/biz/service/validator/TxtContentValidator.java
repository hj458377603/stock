package org.dream.service.biz.service.validator;

import org.dream.bean.errorcode.ErrorCode;
import org.dream.service.biz.intf.validator.AbstractValidator;
import org.dream.service.biz.intf.validator.DataType;
import org.dream.service.biz.intf.validator.rule.MaxLengthValidateRule;
import org.dream.service.biz.intf.validator.rule.MinLengthValidateRule;
import org.dream.service.biz.intf.validator.rule.NotNullValidateRule;
import org.springframework.stereotype.Service;

/**
 * 图片路径验证
 * 
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
@Service
public class TxtContentValidator extends AbstractValidator {

    public DataType getSupportedType() {
        return DataType.TEXTCONTENT;
    }

    public TxtContentValidator() {
        this.registerRule(new NotNullValidateRule(),ErrorCode.PARA_TEXTCONTENT_ERROR);
        this.registerRule(new MinLengthValidateRule(1), ErrorCode.PARA_TEXTCONTENT_ERROR);
        this.registerRule(new MaxLengthValidateRule(140), ErrorCode.PARA_TEXTCONTENT_ERROR);
    }

}
