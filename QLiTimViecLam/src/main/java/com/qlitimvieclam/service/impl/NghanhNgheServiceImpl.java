/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.service.impl;

import com.qlitimvieclam.pojos.Category;
import com.qlitimvieclam.pojos.Nghanh;
import com.qlitimvieclam.repository.CategoryRepository;
import com.qlitimvieclam.repository.NghanhNgheRepository;
import com.qlitimvieclam.service.NghanhNgheService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public class NghanhNgheServiceImpl implements NghanhNgheService{
    @Autowired
    private NghanhNgheRepository nghanhNgheRepository;
    
    @Override
    public List<Nghanh> getNghanhs() {
        return this.nghanhNgheRepository.getNghanhs();
    }
    
}
