/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qlitimvieclam.configs;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.qlitimvieclam.formatter.CategoryFormatter;
import com.qlitimvieclam.formatter.NtdFormatter;
import com.qlitimvieclam.validator.TenViecLamValidator;
import com.qlitimvieclam.validator.WebAppValidator;
import java.util.HashSet;
import java.util.Set;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.format.FormatterRegistry;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 *
 * @author HP
 */

@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = {
        "com.qlitimvieclam.controllers",
        "com.qlitimvieclam.repository",
        "com.qlitimvieclam.service",
        "com.qlitimvieclam.validator"
})
public class WebApplicationContextConfig implements WebMvcConfigurer{
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }
    
    @Bean
    public InternalResourceViewResolver getInternalResourceViewResolver(){
        InternalResourceViewResolver resource = new InternalResourceViewResolver();
        
        resource.setViewClass(JstlView.class);
        resource.setPrefix("/WEB-INF/jsp/");
        resource.setSuffix(".jsp");
        return resource;
    }
    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/**").addResourceLocations("/resources/css/");
        registry.addResourceHandler("/images/**").addResourceLocations("/resources/images/");
    }
            
    @Override
    public Validator getValidator()
    {
        
        return validator();
    }
    
    @Override
    public void addFormatters(FormatterRegistry registry)
    {
        registry.addFormatter(new CategoryFormatter());
        registry.addFormatter(new NtdFormatter());
    }
    @Bean
    public WebAppValidator viecLamValidator(){
        Set<Validator> springValidators = new HashSet<>();
        springValidators.add(new TenViecLamValidator());
        WebAppValidator v = new WebAppValidator();
        v.setSpringValidators(springValidators);
        return v;
}
    
    @Bean
    public LocalValidatorFactoryBean validator()
    {
        LocalValidatorFactoryBean v= new LocalValidatorFactoryBean();
        v.setValidationMessageSource(messageSource());
        return v;
    }
    
    @Bean
    public CommonsMultipartResolver multipartResolver(){
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
        resolver.setDefaultEncoding("UTF-8");
        return resolver;
    }
    
      @Bean
    public MessageSource messageSource(){
        ResourceBundleMessageSource source = new ResourceBundleMessageSource();
        source.setBasename("messages");
        return source;
    }
    
    @Bean
    public Cloudinary cloudinary(){
        Cloudinary c = new Cloudinary(ObjectUtils.asMap(
                "cloud_name", "qlitimvieclam",
                "api_key", "596173493384641",
                "api_secret", "FuOtWUUgXw2vLM4vdi8gSy8TVpM", 
                "secure", true
        ));
     
        return c;
    }
}

