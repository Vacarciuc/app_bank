package com.app_bank.BankApplication.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

@Controller
public class IndexController {


    @GetMapping("/")
    public ModelAndView getIndex(){
        ModelAndView getIndexPage=new ModelAndView("index");
        getIndexPage.addObject("PageTitle", "Home");
        System.out.println("In index controller");
        return getIndexPage;
    }
    //login form
    @GetMapping("/login")
    public ModelAndView getLogin(){
        ModelAndView getLoginPage=new ModelAndView("login");
        System.out.println("In login page controller");
        getLoginPage.addObject("PageTitle", "Login");
        return getLoginPage;
    }

//    //register form
//    @GetMapping("/register")
//    public ModelAndView getRegister(){
//        ModelAndView getRegisterPage=new ModelAndView("register");
//        System.out.println("In register page controller");
//        getRegisterPage.addObject("PageTitle", "Register");
//        return getRegisterPage;
//    }

    //error form
    @GetMapping("/error")
    public ModelAndView getError(){
        ModelAndView getErrorPage=new ModelAndView("error");
        System.out.println("In error page controller");
        getErrorPage.addObject("PageTitle", "Error");
        return getErrorPage;
    }

    //verify form
    @GetMapping("/verify")
    public ModelAndView getVerify(){
        ModelAndView getVerifyPage=new ModelAndView("login");
        System.out.println("In error page controller");
        //getVerifyPage.addObject("PageTitle", "Login");
        return getVerifyPage;
    }

    //dashboard form
    @GetMapping("/dashboard")
    public ModelAndView getDashboard(){
        ModelAndView getDashboardPage=new ModelAndView("dashboard");
        System.out.println("In dashboard page controller");
        getDashboardPage.addObject("PageTitle", "Dashboard");
        return getDashboardPage;
    }
}
