package com.app_bank.BankApplication.controllers;

import com.app_bank.BankApplication.helpers.HTML;
import com.app_bank.BankApplication.helpers.Token;
import com.app_bank.BankApplication.mailMessenger.MailMessenger;
import com.app_bank.BankApplication.models.User;
import com.app_bank.BankApplication.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.MessagingException;
import javax.validation.Valid;
import java.io.IOException;
import java.util.Random;

@Controller
public class RegisterController {

    @Autowired
    private UserRepository userRepository;

    //register form
    @GetMapping("/register")
    public ModelAndView getRegister(){
        ModelAndView getRegisterPage=new ModelAndView("register");
        System.out.println("In register page controller");
        getRegisterPage.addObject("PageTitle", "Register");
        return getRegisterPage;
    }

    //Use RESTfull for register
    @PostMapping("/register")
    public ModelAndView register(@Valid @ModelAttribute("registerUser")User user, BindingResult result,
                                 @RequestParam("first_name") String first_name,
                                 @RequestParam("last_name") String last_name,
                                 @RequestParam("email") String email,
                                 @RequestParam("password") String password,
                                 @RequestParam("confirm_password") String confirm_password) throws MessagingException, IOException {
        ModelAndView registrationPage=new ModelAndView("registration");

        //Check for errors
        if (result.hasErrors() && confirm_password.isEmpty()){
            registrationPage.addObject("confirm_pass", "The confirm field is required");
            return registrationPage;
        }

        //TODO: CHECK FOR PASSWORD MATCH:
        if (!password.equals(confirm_password)){
            registrationPage.addObject("passwordMisMatch", "password do not match");
            return registrationPage;
        }

        //TODO: GET TOKEN STRING:
        String token=Token.generateToken();

        //TODO: GENERATE RANDOM CODE
        Random random=new Random();
        int bound=123;
        int code=bound*random.nextInt(bound);

        //TODO: GET EMAIL HTML BODY:
        String emailBody= HTML.htmlEmailTemplate(token, Integer.toString(code));

        //TODO: HASH PASSWORD:
        String hased_password= BCrypt.hashpw(password, BCrypt.gensalt());

        //TODO: REGISTER USER:
        userRepository.registerUser(first_name, last_name, email, password, token, Integer.toString(code));

        //TODO: SEND EMAIL NOTIFICATION:
        MailMessenger.htmlEmailMessenger("2b760fbe7f9d57", email, "Verify Account", emailBody);

        //TODO: RETURN TO REGISTER PAGE:
        String successMessage="Account Register Successfully, Please Check your Email and Verify Account!";
        registrationPage.addObject("success", successMessage);
        return registrationPage;
    }
}
