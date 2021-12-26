

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.controllers;


import com.qlitimvieclam.service.CategoryService;
import com.qlitimvieclam.service.NghanhNgheService;
import com.qlitimvieclam.service.NtdService;
import com.qlitimvieclam.service.UngVienService;
import com.qlitimvieclam.service.ViecLamService;
import java.util.Map;
import javax.servlet.http.HttpSession;
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
    @Autowired
    private UngVienService ungVienService;
    @Autowired
    private NghanhNgheService nghanhNgheService;
    
    @ModelAttribute
    public void commonAttr(Model model, HttpSession session){
        model.addAttribute("categories", this.categoryService.getCategories());
        model.addAttribute("nhaTuyenDungs", this.ntdService.getNhaTuyenDungs());
        model.addAttribute("nghanhNghes", this.nghanhNgheService.getNghanhs());
         model.addAttribute("currentUser", session.getAttribute("currentUser"));
           }
    
    @RequestMapping("/")
    @Transactional
    public String index(Model model, @RequestParam( required= false) Map<String, String> params){
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("viec",this.viecLamService.getViecLam(params.get("vl"), page));
        model.addAttribute("counter", this.viecLamService.countViecLam());
        model.addAttribute("ungvien",this.ungVienService.getUngVien(params.get("uv"), page));
        model.addAttribute("counter", this.ungVienService.countUngVien());
       

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
     * @return the ungVienService
     */
    public UngVienService getUngVienService() {
        return ungVienService;
    }

    /**
     * @param ungVienService the ungVienService to set
     */
    public void setUngVienService(UngVienService ungVienService) {
        this.ungVienService = ungVienService;
    }

    /**
     * @return the ntdService
     */
 
    
}
