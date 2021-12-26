/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.repository;

import com.qlitimvieclam.pojos.UngVien;
import java.util.List;

/**
 *
 * @author HP
 */
public interface UngVienRepository {
    List<UngVien> getUngVien(String uv, int page);
    long countUngVien();   
    boolean add0rUpdate(UngVien ungVien);
    UngVien getUngVienById(int id);
}
