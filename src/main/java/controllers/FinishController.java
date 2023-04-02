package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.Customer;
import models.entities.Order;
import models.managers.SendingEmailManager;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ServletFinishController", value = "/finish")
public class FinishController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("cartList");
        if(session.getAttribute("userLogin")==null){
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        }else if(session.getAttribute("newOrder")==null){
            request.getRequestDispatcher("WEB-INF/checkout.jsp").forward(request, response);
        }
        else {
            Customer user = (Customer) session.getAttribute("userLogin");
            Order newOrder = (Order) session.getAttribute("newOrder");
            SendingEmailManager sendEmail = new SendingEmailManager();

            String emailContain = sendEmail.buildConfirmMessage(user, newOrder);

            boolean test = sendEmail.sendEmail(user, emailContain, "Confirmation of your order!");

            if(!test){
                request.getRequestDispatcher("WEB-INF/checkout.jsp").forward(request, response);
            }else {
                request.getRequestDispatcher("WEB-INF/finish.jsp").forward(request, response);
            }
        }
    }


}
