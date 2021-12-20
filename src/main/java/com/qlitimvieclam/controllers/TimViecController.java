/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.controllers;

import com.qlitimvieclam.pojos.TimViec;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;

/**
 *
 * @author HP
 */
public class TimViecController {
    
    
    
//    @InitBinder
//    public void initBinder(WebDataBinder binder){
//        binder.setValidator(viecLamValidator);
//    }
     @GetMapping("/timViecs")
    public String list(Model model){
        model.addAttribute("timViec", new TimViec());
        return "timViec";
    }
    
}
