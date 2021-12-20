/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.service.impl;

import com.qlitimvieclam.pojos.NhaTuyenDung;
import com.qlitimvieclam.repository.NtdRepository;
import com.qlitimvieclam.service.NtdService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public class NtdServiceImpl implements NtdService{
    @Autowired
    private NtdRepository ntdRepository;
    
    @Override
    public List<NhaTuyenDung> getNhaTuyenDungs() {
        return this.ntdRepository.getNhaTuyenDungs();
    }
    
}
