/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.repository.impl;

import com.qlitimvieclam.pojos.User;
import com.qlitimvieclam.repository.UserRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
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
public class UserRepositoryImpl implements UserRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public boolean addUser(User user) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(user);
            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }
        
        return false;
    }

    @Override
    public List<User> getUsers(String username) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
//        User user = new User();
//        user.setId(4);
//        user.setUsername("user");
//        String pass = "1234";
//        String hash = BCrypt.hashpw(pass, BCrypt.gensalt(12));
//        user.setPassword(hash);
//        user.setUserRole("ROLE_USER");
//        user.setFirstName("Nguyen");
//        user.setLastName("Van A");
//        user.setEmail("vana@gmail.com");
//        user.setPhone(01233456);
//        session.save(user);
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        query = query.select(root);
        if(!username.isEmpty()){
             Predicate p = builder.equal(root.get("username").as(String.class), username.trim());
             query = query.where(p);
         }      
        Query q = session.createQuery(query);
        return q.getResultList();
    
    }

    @Override
    public User getUserById(int id) {
        Session session = sessionFactory.getObject().getCurrentSession();
        return session.get(User.class, id);
    }
    
}
