/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.service.impl;

import com.qlitimvieclam.pojos.Category;
import com.qlitimvieclam.repository.CategoryRepository;
import com.qlitimvieclam.service.CategoryService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public class CategoryServiceImpl implements CategoryService{
    @Autowired
    private CategoryRepository categoryRepository;
    
    @Override
    public List<Category> getCategories() {
        return this.categoryRepository.getCategories();
    }

   
}
