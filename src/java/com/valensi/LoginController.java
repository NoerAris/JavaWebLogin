/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi;

import com.valensi.dao.UserService;
import com.valensi.main.PasswordDigest;
import com.valensi.model.Pengguna;
import javax.servlet.http.HttpSession;
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
@RequestMapping("/login")
public class LoginController {
    @Autowired
    UserService usc;
    
       @RequestMapping()
    public String goToLogin(Model model){
       LoginBean loginBean= new LoginBean();
     
        model.addAttribute("loginBean",loginBean);
       return "login"; 
    }
    
    @RequestMapping(value = "/check")
    public String checkLogin(HttpSession session,@ModelAttribute("loginBean")LoginBean loginBean,Model model){
        Pengguna usr=usc.findByUsername(loginBean.getUsername());
        
       if(usr.getUserName()==null){
           model.addAttribute("errMsg","Username salah");
           return "login";
       }
      String encryptedPassword=PasswordDigest.createEncryptedPassword(loginBean.getPassword());
      if(!encryptedPassword.equals(usr.getPassword())){
      model.addAttribute("errMsg","Password salah");
      return "login";
    }
    session.setAttribute("usr", usr);
    return "successlogin";
}
}