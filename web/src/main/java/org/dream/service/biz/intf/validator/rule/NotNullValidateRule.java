package org.dream.service.biz.intf.validator.rule;

public class NotNullValidateRule implements ValidateRule<Object> {
    public void validate(Object o) throws Exception {
        if (o == null) {
            throw new Exception();
        }
    }
}
