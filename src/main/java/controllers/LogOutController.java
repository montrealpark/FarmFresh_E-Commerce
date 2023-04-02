package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.Customer;

import java.io.IOException;

@WebServlet(name = "LogOutController", value = "/logout")
public class LogOutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customer user = (Customer) session.getAttribute("userLogin");
        session.removeAttribute(Integer.toString(user.getId()));
        session.removeAttribute("userLogin");
        session.removeAttribute("newOrder");
        session.removeAttribute("cartList");
        request.getRequestDispatcher("WEB-INF/home.jsp").forward(request, response);
    }

}
