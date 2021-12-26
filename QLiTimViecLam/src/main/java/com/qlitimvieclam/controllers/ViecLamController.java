/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.controllers;

import com.qlitimvieclam.pojos.ViecLam;
import com.qlitimvieclam.service.ViecLamService;
import com.qlitimvieclam.validator.WebAppValidator;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


/**
 *
 * @author HP
 */
@Controller
public class ViecLamController {
    @Autowired
    private WebAppValidator viecLamValidator;
    @Autowired
    private ViecLamService viecLamService;
   
    @InitBinder
    public void initBinder(WebDataBinder binder){
        binder.setValidator(viecLamValidator);
    }
    
    
    
    @GetMapping("/viecLam/{vieclamId}")
    public String detail(Model model, @PathVariable(value = "vieclamId")int vieclamId)
    {
        model.addAttribute("viecLam", this.viecLamService.getViecLamById(vieclamId));
        return "vieclam-detail";
    }
    
    @GetMapping("/nhatuyendungs")
    public String list(Model model){
        model.addAttribute("viecLam", new ViecLam());
        return "viecLam";
    }
    
    
    
    @PostMapping("/nhatuyendungs")
    public String add(Model model, @ModelAttribute(value = "viecLam") @Valid ViecLam viecLam, BindingResult result){
        if(!result.hasErrors()){
            if(this.viecLamService.add0rUpdate(viecLam) == true)
                return "redirect:/";
            else 
                model.addAttribute("errMsg", "Something wrong!!!");
        }
        return "viecLam";
    }
}
