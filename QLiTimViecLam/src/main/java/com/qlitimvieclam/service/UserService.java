/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.service;

import com.qlitimvieclam.pojos.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;


/**
 *
 * @author HP
 */
public interface UserService extends UserDetailsService{
    User getUserById(int id);
        
    boolean addUser(User user);
    List<User>getUsers(String username);
}
