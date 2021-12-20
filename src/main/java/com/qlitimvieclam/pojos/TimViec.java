/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.pojos;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name="tim_viec")
public class TimViec implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name="tencv")
    private String tenCv;
    @Column(name="luong")
    private BigDecimal luong;
    @Column(name="diaChi")
    private String diaChi;
    @Column(name="image")
    private String image;
    @ManyToOne(fetch= FetchType.EAGER)
    @JoinColumn(name="ungvien_id")
    private Category ungVien;
    @ManyToOne(fetch= FetchType.EAGER)
    @JoinColumn(name = "nghanhnghe_id")
    private NhaTuyenDung nghe;

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
     * @return the tenCv
     */
    public String getTenCv() {
        return tenCv;
    }

    /**
     * @param tenCv the tenCv to set
     */
    public void setTenCv(String tenCv) {
        this.tenCv = tenCv;
    }

    /**
     * @return the luong
     */
    public BigDecimal getLuong() {
        return luong;
    }

    /**
     * @param luong the luong to set
     */
    public void setLuong(BigDecimal luong) {
        this.luong = luong;
    }

    /**
     * @return the diaChi
     */
    public String getDiaChi() {
        return diaChi;
    }

    /**
     * @param diaChi the diaChi to set
     */
    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    /**
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * @return the ungVien
     */
    public Category getUngVien() {
        return ungVien;
    }

    /**
     * @param ungVien the ungVien to set
     */
    public void setUngVien(Category ungVien) {
        this.ungVien = ungVien;
    }

    /**
     * @return the nghe
     */
    public NhaTuyenDung getNghe() {
        return nghe;
    }

    /**
     * @param nghe the nghe to set
     */
    public void setNghe(NhaTuyenDung nghe) {
        this.nghe = nghe;
    }
}
