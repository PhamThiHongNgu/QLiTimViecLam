/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
// */
//package com.qlitimvieclam.repository.impl;
//
//import com.qlitimvieclam.repository.StatsRepository;
//import java.util.List;
//import javax.persistence.criteria.CriteriaBuilder;
//import javax.persistence.criteria.CriteriaQuery;
//import org.hibernate.Session;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
//import org.springframework.stereotype.Repository;

/**
 *
 * @author HP
 */
//@Repository
//public class StatsRepositoryImpl implements StatsRepository{
//    @Autowired
//    private LocalSessionFactoryBean sessionFactory;
//    @Override
//    public List<Object[]> ngheStats() {
//        Session session = this.sessionFactory.getObject().getCurrentSession();
//        CriteriaBuilder b = session.getCriteriaBuilder();
//        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
//        
////        Root rootP q = from(ViecLam.class);
////        Root rootC = q.from(Nghe.class);
////         q.where(b.equal(rootC, arg1))
////    }
//        return null;
//    }
//}
