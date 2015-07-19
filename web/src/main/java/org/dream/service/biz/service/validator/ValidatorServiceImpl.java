package org.dream.service.biz.service.validator;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dream.bean.exception.StockException;
import org.dream.service.biz.intf.validator.DataType;
import org.dream.service.biz.intf.validator.Validator;
import org.dream.service.biz.intf.validator.ValidatorService;
import org.springframework.stereotype.Service;

@Service("validatorService")
public class ValidatorServiceImpl<T> implements ValidatorService<T> {

    Map<DataType, Validator<T>> validatorMap = new HashMap<DataType, Validator<T>>();

    public void registerValidator(List<Validator<T>> validatorList) {
        for (Validator<T> validator : validatorList) {
            registerValidator(validator);
        }
    }

    public void registerValidator(Validator<T> validator) {
        if (validatorMap.get(validator.getSupportedType()) != null) {
            throw new RuntimeException("alreay register " + validator.getSupportedType().toString());
        }
        validatorMap.put(validator.getSupportedType(), validator);
    }

    public void validate(DataType dataType, T value) throws StockException {
        Validator<T> validator = validatorMap.get(dataType);
        validator.validate(value);
    }
}