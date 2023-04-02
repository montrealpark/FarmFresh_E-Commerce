package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.Customer;
import models.entities.Order;
import models.entities.OrderProduct;
import models.entities.ShoppingCart;
import models.managers.OrderManager;
import models.managers.OrderProductManager;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CheckoutController", value = "/checkout")
public class CheckoutController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<ShoppingCart> cartList = (ArrayList<ShoppingCart>) session.getAttribute("cartList");
        Customer user = (Customer) session.getAttribute("userLogin");
        try{
            float total = Float.parseFloat(request.getParameter("total"));
            String orderNumber = Integer.toString(user.getId()) + Float.toString(total).replace(".","");
            Order order = new Order(orderNumber, user.getId(), total);
            OrderManager.insertNewOrder(order);
            session.setAttribute("newOrder", order);
            for (ShoppingCart itemInCart : cartList) {
                OrderProductManager.insertNewOrderProduct(orderNumber, itemInCart.getId(), itemInCart.getQuantity());
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }
        request.getRequestDispatcher("WEB-INF/checkout.jsp").forward(request, response);

    }
}
