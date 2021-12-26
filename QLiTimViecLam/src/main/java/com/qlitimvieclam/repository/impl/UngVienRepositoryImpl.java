/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.repository.impl;

import com.qlitimvieclam.pojos.UngVien;
import com.qlitimvieclam.repository.UngVienRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author HP
 */
@Repository
@Transactional
public class UngVienRepositoryImpl implements UngVienRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<UngVien> getUngVien(String uv ,int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<UngVien> query = builder.createQuery(UngVien.class);
        Root root = query.from(UngVien.class);
        query = query.select(root);
        if(uv != null)
        {
            Predicate p =  builder.like(root.get("ten").as(String.class), 
                    String.format("%%%s%%", uv));
                    query= query.where(p);
        }
        Query q = session.createQuery(query);
        int max = 6;
        q.setMaxResults(max);
        q.setFirstResult((page - 1)*max);
       return q.getResultList(); //To change body of generated methods, choose Tools | Templates.
      
    }

    @Override
    public long countUngVien() {
    Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery(" Select Count(*) From UngVien");
        
        return Long.parseLong(q.getSingleResult().toString());
    }

    @Override
    public boolean add0rUpdate(UngVien uvien) {
    Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(uvien);
            return true;
        } catch (Exception ex){
            System.err.println("===ADD UNGVIEN ERRR===" + ex.getMessage());
           
        }
       
        return false;
    }

    @Override
    public UngVien getUngVienById(int id) {
    Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(UngVien.class, id);
    }
                

    
}
