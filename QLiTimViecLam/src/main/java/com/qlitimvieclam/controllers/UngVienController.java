/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.controllers;
import com.qlitimvieclam.pojos.UngVien;
import com.qlitimvieclam.service.UngVienService;
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
public class UngVienController {
//    @Autowired
//    private WebAppValidator ungVienValidator;
    @Autowired
    private UngVienService ungVienService;
   
//    @InitBinder
//    public void initBinder(WebDataBinder binder){
//        binder.setValidator(ungVienValidator);
//    }
     @GetMapping("/ungviens")
    public String list(Model model){
        model.addAttribute("ungvien", new UngVien());
        return "ungvien";
    }
    @GetMapping("/ungVien/{ungvienId}")
    public String detail(Model model, @PathVariable(value = "ungvienId")int ungvienId)
    {
            model.addAttribute("ungVien", this.ungVienService.getUngVienById(ungvienId));
        return "ungvien-detail";
    }
     
    @PostMapping("/ungviens")
    public String add(Model model, @ModelAttribute(value = "ungVien") @Valid UngVien ungVien, BindingResult result){
        if(!result.hasErrors()){
            if(this.ungVienService.add0rUpdate(ungVien) == true)
                return "redirect:/";
            else 
                model.addAttribute("errMsg", "Something wrong!!!");
        }
        return "ungVien";
    }
}
