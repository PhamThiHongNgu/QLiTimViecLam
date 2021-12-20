/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.repository.impl;

import com.qlitimvieclam.pojos.ViecLam;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import com.qlitimvieclam.repository.ViecLamRepository;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author HP
 */
@Repository
@Transactional
public class ViecLamRepositoryImpl implements ViecLamRepository {
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<ViecLam> getViecLam(String vl,int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<ViecLam> query = builder.createQuery(ViecLam.class);
        Root root = query.from(ViecLam.class);
        query = query.select(root);
        if( vl != null)
        {
            Predicate p =  builder.like(root.get("tenVL").as(String.class), 
                    String.format("%%%s%%", vl));
                    query= query.where(p);
        }
        Query q = session.createQuery(query);
        int max = 6;
        q.setMaxResults(max);
        q.setFirstResult((page - 1)*max);
       return q.getResultList(); //To change body of generated methods, choose Tools | Templates.
      
    }

    @Override
    public boolean add0rUpdate(ViecLam vclm) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(vclm);
            return true;
        } catch (Exception ex){
            System.err.println("===ADD VIECLAM ERRR===" + ex.getMessage());
           
        }
       
        return false;
    }

    @Override
    public long countViecLam() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery(" Select Count(*) From ViecLam");
        
        return Long.parseLong(q.getSingleResult().toString());
    }

   

    

    
    
}
