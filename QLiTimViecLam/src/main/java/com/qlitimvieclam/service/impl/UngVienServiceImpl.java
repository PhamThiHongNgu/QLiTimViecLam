/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.qlitimvieclam.pojos.UngVien;
import com.qlitimvieclam.repository.UngVienRepository;
import com.qlitimvieclam.service.UngVienService;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public class UngVienServiceImpl implements UngVienService{
    @Autowired
        private UngVienRepository ungVienRepository;
    @Autowired
    private Cloudinary cloudinary;
    
    @Override
    public List<UngVien> getUngVien( String uv, int page) {
        return this.ungVienRepository.getUngVien(uv, page); 
    }

    @Override
    public long countUngVien() {
         return this.ungVienRepository.countUngVien();
    }

    @Override
    public boolean add0rUpdate(UngVien ungVien) {
        try {
            Map r = this.cloudinary.uploader().upload(ungVien.getFile().getBytes(),
                         ObjectUtils.asMap("resource_type", "auto"));
            ungVien.setImage((String) r.get("secure_url"));
            
            return this.ungVienRepository.add0rUpdate(ungVien);
            } catch (IOException ex) {
                System.err.println("== UPLOAD CV ==" + ex.getMessage());
            }
         return false;
    }

    @Override
    public UngVien getUngVienById(int id) {
         return this.ungVienRepository.getUngVienById(id);
    }
    
}
