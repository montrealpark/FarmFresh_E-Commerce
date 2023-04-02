package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.Customer;
import models.managers.CustomerManager;
import models.managers.SendingEmailManager;

import java.io.IOException;

@WebServlet(name = "ContactUsController", value = "/contactUs")
public class ContactUsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/contactUs.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try{
            String fName = request.getParameter("fName");
            String message = request.getParameter("message");
            SendingEmailManager sendEmail = new SendingEmailManager();

            Customer store = new Customer("farmfresh.lasalle@gmail.com");

            boolean test = sendEmail.sendEmail(store, message, "Message from customers -" + fName);

            if(!test){
                request.getRequestDispatcher("WEB-INF/contactUs.jsp").forward(request, response);
            }else {
                session.setAttribute("messageSent", "true");
                request.getRequestDispatcher("WEB-INF/contactUs.jsp").forward(request, response);
            }

        } catch(Exception ex){
            ex.printStackTrace();
        }
    }
}
