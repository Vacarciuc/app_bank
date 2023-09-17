package com.app_bank.BankApplication.controler_advisor;

import com.app_bank.BankApplication.models.User;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class Advisor_Controller {

    @ModelAttribute("registerUser")
    public User getUserDefaults(){
        return new User();
    }
}
