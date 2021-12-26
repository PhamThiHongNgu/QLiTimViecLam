/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.repository;

import com.qlitimvieclam.pojos.ViecLam;
import java.util.List;


/**
 *
 * @author HP
 */
public interface ViecLamRepository {
    List<ViecLam> getViecLam(String vl, int page); 
    long countViecLam();   
    boolean add0rUpdate(ViecLam viecLam);
    ViecLam getViecLamById(int id);
}
