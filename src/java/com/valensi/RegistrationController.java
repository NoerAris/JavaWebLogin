/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi;

import com.valensi.dao.UserService;
import com.valensi.main.PasswordDigest;

import com.valensi.model.Pengguna;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Aris
 */
@Controller
@RequestMapping("/register")
public class RegistrationController {
    
    @Autowired
    UserService usc;
    
    @RequestMapping()
    public String registerForm(Model model){
        RegisterFormBean registerBean= new RegisterFormBean();
        
        //registerBean.setLastName("Smith");
        model.addAttribute("registerBean",registerBean);
       return "registration"; 
    }
    
    @RequestMapping(value="/save")
    public String saveRegistration(@ModelAttribute("registerBean") RegisterFormBean registerBean, Model model){
        Pengguna usr=new Pengguna();
        //usr.setId(Integer.SIZE);
        //Untuk mengenkripsi password ke tabel
        String encryptedPassword=PasswordDigest.createEncryptedPassword(registerBean.getPassword());
        //
        usr.setFirstName(registerBean.getFirstname());
        usr.setLastName(registerBean.getLastname());
        usr.setUserName(registerBean.getUsername());
        usr.setPassword(encryptedPassword);
        
        
        usc.saveUser(usr);
//        System.out.println("User First Name : "+registerBean.getFirstName());
        model.addAttribute("data",registerBean);
        
        return "successregistration";
    }
}
