/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.controllers;


import com.qlitimvieclam.service.CategoryService;
import com.qlitimvieclam.service.NtdService;
import com.qlitimvieclam.service.ViecLamService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author HP
 */
@Controller
@ControllerAdvice
public class HomeController {
    @Autowired
    private CategoryService  categoryService;
    @Autowired
    private NtdService ntdService;
    
    @Autowired
    private ViecLamService viecLamService;
    
    @ModelAttribute
    public void commonAttr(Model model){
        model.addAttribute("categories", this.categoryService.getCategories());
        model.addAttribute("nhaTuyenDungs", this.getNtdService().getNhaTuyenDungs());
           }
    @RequestMapping("/")
    @Transactional
    public String index(Model model, @RequestParam( required= false) Map<String, String> params){
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("viec",this.viecLamService.getViecLam(params.get("vl"), page));
        model.addAttribute("counter", this.viecLamService.countViecLam());

        return "index";
    }

    /**
     * @return the viecLamService
     */
    public ViecLamService getViecLamService() {
        return viecLamService;
    }

    /**
     * @param viecLamService the viecLamService to set
     */
    public void setViecLamService(ViecLamService viecLamService) {
        this.viecLamService = viecLamService;
    }

    /**
     * @return the categoryService
     */
    public CategoryService getCategoryService() {
        return categoryService;
    }

    /**
     * @param categoryService the categoryService to set
     */
    public void setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    /**
     * @return the ntdService
     */
    public NtdService getNtdService() {
        return ntdService;
    }

    /**
     * @param ntdService the ntdService to set
     */
    public void setNtdService(NtdService ntdService) {
        this.ntdService = ntdService;
    }

    /**
     * @return the ntdService
     */
 
    
}
