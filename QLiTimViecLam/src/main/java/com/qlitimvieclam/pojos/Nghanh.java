/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.pojos;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name="nghanh_nghe")
public class Nghanh {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;
    @Column(name="ten_nghanh")
    private String tenNghanh;
    @OneToMany(mappedBy = "nghanh", fetch= FetchType.EAGER)
    private Set<UngVien> UngVien;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the tenNghanh
     */
    public String getTenNghanh() {
        return tenNghanh;
    }

    /**
     * @param tenNghanh the tenNghanh to set
     */
    public void setTenNghanh(String tenNghanh) {
        this.tenNghanh = tenNghanh;
    }

    /**
     * @return the UngVien
     */
    public Set<UngVien> getUngVien() {
        return UngVien;
    }

    /**
     * @param UngVien the UngVien to set
     */
    public void setUngVien(Set<UngVien> UngVien) {
        this.UngVien = UngVien;
    }

}
