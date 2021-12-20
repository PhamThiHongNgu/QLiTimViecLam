/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.pojos;

import java.io.Serializable;
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
@Table(name = "nha_tuyen_dung")
public class NhaTuyenDung implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "ten_ntd")
    private String tenNtd;
    @Column(name = "linh_vuc")
    private String linhVuc;
    @Column(name = "thong_tin")
    private String thongTin;
    @Column(name = "sdt")
    private String sdt;
    @Column(name = "dia_chi")
    private String diaChi;
    @OneToMany(mappedBy = "nhaTuyenDung", fetch= FetchType.EAGER)
    private Set<ViecLam> viecLam;

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
     * @return the tenNtd
     */
    public String getTenNtd() {
        return tenNtd;
    }

    /**
     * @param tenNtd the tenNtd to set
     */
    public void setTenNtd(String tenNtd) {
        this.tenNtd = tenNtd;
    }

    /**
     * @return the linhVuc
     */
    public String getLinhVuc() {
        return linhVuc;
    }

    /**
     * @param linhVuc the linhVuc to set
     */
    public void setLinhVuc(String linhVuc) {
        this.linhVuc = linhVuc;
    }

    /**
     * @return the thongTin
     */
    public String getThongTin() {
        return thongTin;
    }

    /**
     * @param thongTin the thongTin to set
     */
    public void setThongTin(String thongTin) {
        this.thongTin = thongTin;
    }

    /**
     * @return the sdt
     */
    public String getSdt() {
        return sdt;
    }

    /**
     * @param sdt the sdt to set
     */
    public void setSdt(String sdt) {
        this.sdt = sdt;
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
     * @return the viecLam
     */
    public Set<ViecLam> getViecLam() {
        return viecLam;
    }

    /**
     * @param viecLam the viecLam to set
     */
    public void setViecLam(Set<ViecLam> viecLam) {
        this.viecLam = viecLam;
    }
}
