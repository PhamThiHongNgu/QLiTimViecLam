/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.formatter;

import com.qlitimvieclam.pojos.NhaTuyenDung;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author HP
 */
public class NtdFormatter implements Formatter<NhaTuyenDung>{

    @Override
    public String print(NhaTuyenDung object, Locale locale) {
      return String.valueOf(object.getId());
    }

    @Override
    public NhaTuyenDung parse(String ntdId, Locale locale) throws ParseException {
        NhaTuyenDung n = new NhaTuyenDung();
        n.setId(Integer.parseInt(ntdId));
        return n;
    }
    
}
