package org.dream.service.biz.intf.validator.rule;

public class MinLengthValidateRule implements ValidateRule<String> {
    public int length;

    public MinLengthValidateRule(int length) {
        this.length = length;
    }

    public void validate(String str) throws Exception {
        if (str == null || str.length() < length) {
            throw new Exception();
        }
    }
}
