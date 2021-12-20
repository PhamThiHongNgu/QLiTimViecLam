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
//    @OneToMany(mappedBy = "nganh_nghe", fetch= FetchType.EAGER)
//    private Set<ViecLam> viecLam;
//
}
