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
import javax.persistence.Transient;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author HP
 */
@Entity
@Table(name="viec_lam")
public class ViecLam implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name="ten_vieclam")
    @Size(min = 10, max = 100, message = "{viecLam.tenVL.lenErr}")
    private String tenVL;
    @Column(name="luong")
    @Min(value = 1000, message = "{viecLam.luong.minErr}")
    @Max(value = 100000000, message = "{viecLam.luong.maxErr}") 
    private BigDecimal luong;
    @ManyToOne(fetch= FetchType.EAGER)
    @JoinColumn(name="category_id")
    private Category category;
    @ManyToOne(fetch= FetchType.EAGER)
    @JoinColumn(name = "nhatuyendung_id")
    private NhaTuyenDung nhaTuyenDung;
    @Column(name="image")
    private String image;
    @Column(name="mota")
    private String motacv;
    @Transient 
    private MultipartFile file;

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
     * @return the tenVL
     */
    public String getTenVL() {
        return tenVL;
    }

    /**
     * @param tenVL the tenVL to set
     */
    public void setTenVL(String tenVL) {
        this.tenVL = tenVL;
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
     * @return the category
     */
    public Category getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(Category category) {
        this.category = category;
    }

    /**
     * @return the nhaTuyenDung
     */
    public NhaTuyenDung getNhaTuyenDung() {
        return nhaTuyenDung;
    }

    /**
     * @param nhaTuyenDung the nhaTuyenDung to set
     */
    public void setNhaTuyenDung(NhaTuyenDung nhaTuyenDung) {
        this.nhaTuyenDung = nhaTuyenDung;
    }

    /**
     * @return the file
     */
    public MultipartFile getFile() {
        return file;
    }

    /**
     * @param file the file to set
     */
    public void setFile(MultipartFile file) {
        this.file = file;
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
     * @return the motacv
     */
    public String getMotacv() {
        return motacv;
    }

    /**
     * @param motacv the motacv to set
     */
    public void setMotacv(String motacv) {
        this.motacv = motacv;
    }

    /**
     * @return the nghanh
     */
//    public Nghanh getNghanh() {
//        return nghanh;
//    }
//
//    /**
//     * @param nghanh the nghanh to set
//     */
//    public void setNghanh(Nghanh nghanh) {
//        this.nghanh = nghanh;
//    }

}
