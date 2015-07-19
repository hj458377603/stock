package org.dream.service.biz.intf.validator.rule;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegxValidateRule implements ValidateRule<Object> {
    public String regex;

    public RegxValidateRule(String regex) {
        this.regex = regex;
    }

    public void validate(Object value) throws Exception {
        Matcher matcher = Pattern.compile(regex).matcher(value.toString());
        if (!matcher.matches()) {
            throw new Exception();
        }

    }
}
