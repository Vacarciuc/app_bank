package com.app_bank.BankApplication.mailMessenger;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class MailMessenger {
    public static void htmlEmailMessenger(String from, String toMail, String subject, String body) throws
            MessagingException, IOException {
        Properties properties=new Properties();
        InputStream inputStream=null;
        inputStream=new FileInputStream("src/main/resources/mail.properties");
        properties.load(inputStream);

        Session mailSession=Session.getDefaultInstance(properties);
        MimeMessage message=new MimeMessage(mailSession);
        message.setFrom(new InternetAddress(from));
        message.addRecipient(Message.RecipientType.TO, new InternetAddress(toMail));
        message.setSubject(subject);
        message.setText(body);
        //pass we can set in mail.properties
        Transport transport=mailSession.getTransport();
        transport.connect(null, "61739fb17e3da6");
        transport.sendMessage(message, message.getAllRecipients());
        System.out.println("@Finally");
        transport.close();
    }
}
