/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.service;

import com.qlitimvieclam.pojos.ViecLam;
import java.util.List;

/**
 *
 * @author HP
 */
public interface ViecLamService {
   List<ViecLam> getViecLam(String vl, int page);
   long countViecLam();
    boolean add0rUpdate(ViecLam viecLam);
}
