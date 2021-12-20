/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.validator;

import com.qlitimvieclam.pojos.ViecLam;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author HP
 */
@Component
public class TenViecLamValidator implements Validator{

    @Override
    public boolean supports(Class<?> clazz) {
        return ViecLam.class.isAssignableFrom(clazz);
        
    }

    @Override
    public void validate(Object target, Errors errors) {
      ViecLam vl = (ViecLam) target;
      if(!vl.getTenVL().contains("Tuyen"))
          errors.rejectValue("tenVL", "viecLam.tenVL.myErr");
    
}
}
