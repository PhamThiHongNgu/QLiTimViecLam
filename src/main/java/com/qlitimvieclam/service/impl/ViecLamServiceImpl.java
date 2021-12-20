/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.service.impl;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.qlitimvieclam.pojos.ViecLam;
import com.qlitimvieclam.repository.ViecLamRepository;
import com.qlitimvieclam.service.ViecLamService;
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
public class ViecLamServiceImpl implements ViecLamService{
    @Autowired
        private ViecLamRepository viecLamRepository;
    @Autowired
    private Cloudinary cloudinary;
    
    @Override
    public List<ViecLam> getViecLam( String vl, int page) {
        return this.viecLamRepository.getViecLam(vl, page); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add0rUpdate(ViecLam viecLam) {
         try {
            Map r = this.cloudinary.uploader().upload(viecLam.getFile().getBytes(),
                         ObjectUtils.asMap("resource_type", "auto"));
            viecLam.setImage((String) r.get("secure_url"));
            
            return  this.viecLamRepository.add0rUpdate(viecLam);
            } catch (IOException ex) {
                System.err.println("== THÊM VIỆC ==" + ex.getMessage());
            }
         return false;
    }

    @Override
    public long countViecLam() {
       return this.viecLamRepository.countViecLam();
    }
    
}
