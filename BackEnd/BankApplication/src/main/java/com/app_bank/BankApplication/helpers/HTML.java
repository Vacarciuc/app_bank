package com.app_bank.BankApplication.helpers;

public class HTML {

    public static String htmlEmailTemplate(String token, String code){
        //Verify account url
        String url="http://127.0.0.1:8070/verify?token="+token+"&code="+code;

        String emailTemplate="<!DOCTYPE html>\n" +
                "<html lang='en'>\n" +
                "<head>\n" +
                "    <meta charset='UTF-8'>\n" +
                "    <meta http-equiv='X-UA-Compatible' content='IE=edge'>\n" +
                "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>\n" +
                "    <link rel='stylesheet' href='css/default/email.css'>\n" +
                "    <title>Document</title>\n" +
                "</head>\n" +
                "<body>\n" +
                "    <!-- Wrapper -->\n" +
                "    <div class='wrapper'>\n" +
                "        <!-- Email MSG Header -->\n" +
                "        <h2 class='email-msg-header'>Welcome and thank you for choosing </h2>\n" +
                "        <!-- End Of MSG Hender -->\n" +
                "        <!-- Company name -->\n" +
                "        <div class='company-name'>Reflexion Bank</div>\n" +
                "        <!-- End Of company name -->\n" +
                "        <hr>\n" +
                "        <!-- Welcome Text -->\n" +
                "        <p class='welcome-text'>\n" +
                "            Your account has been succesfully registered, please click below to verify your account\n" +
                "        </p>\n" +
                "        <!-- End Of Wlcome Text -->\n" +
                "        <br>\n" +
                "        <br>\n" +
                "        <!-- Verify Account Button -->\n" +
                "        <center><a href='"+ url +"' class='verify-account-btn'>Verify Account</a></center>\n" +
                "        <!-- End Of Verify Account Button -->\n" +
                "\n" +
                "        <!-- Copy Right Wrapper -->\n" +
                "        <div class='copy-right'>\n" +
                "            &copy; Copy Right 2023. All Rights Reserved.\n" +
                "        </div>\n" +
                "        <!-- End Of Copy Right Wrapper -->\n" +
                "    </div>\n" +
                "    <!-- End Of Wrapper -->\n" +
                "</body>\n" +
                "</html>";
        return "";
    }
}
