/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.formatter;

import com.qlitimvieclam.pojos.Nghanh;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author HP
 */
public class NghanhNgheFormatter implements Formatter<Nghanh>{

    @Override
    public String print(Nghanh object, Locale locale ) {
        return String.valueOf(object.getId());   
    }

    @Override
    public Nghanh parse(String nghanhId, Locale locale ) throws ParseException {
         Nghanh c = new Nghanh();
        c.setId(Integer.parseInt(nghanhId));
        return c;
    }
    
}
