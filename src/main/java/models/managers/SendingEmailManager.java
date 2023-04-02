package models.managers;

import models.entities.Customer;
import models.entities.Order;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;


public class SendingEmailManager {

    public String buildConfirmMessage(Customer user, Order order){
        String greeting = "Dear " + user.getFirstName() + " !\n\n";
        String thankMessage = "Thank you for shopping with us!"+ "\n\nYour order details are as follow: \n";
        String orderDetails = "Order number: " + order.getOrderNumber() + ".\nTotal amount: $"+ order.getTotal();
        String goodbye = "\n\nYour order will be deliver within 24 hours. \n\nKindest regards, Thank you!\n\n From FarmFresh with love!";
        return greeting + thankMessage + orderDetails + goodbye;
    }

    public boolean sendEmail(Customer user, String emailContain, String emailSubject) {
        boolean test = false;
        String to = user.getEmail();

        String from = "farmfresh.lasalle@gmail.com";

        String host = "smtp.gmail.com";

        Properties properties = System.getProperties();

        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");

        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication() {

                return new PasswordAuthentication("farmfresh.lasalle@gmail.com", "yakkwxcvaejbjnpu");

            }

        });

        session.setDebug(true);

        try {

            MimeMessage message = new MimeMessage(session);

            message.setFrom(new InternetAddress(from));

            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

            message.setSubject(emailSubject);

            message.setText(emailContain);

            Transport.send(message);

            test = true;
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
        return test;
    }

}


