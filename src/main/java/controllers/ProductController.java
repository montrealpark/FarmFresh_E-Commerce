package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.action.ProductAction;

import java.io.IOException;

@WebServlet(name = "ProductController", value = "/products")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        ProductAction.getAll(request);
        if(request.getParameter("category")!=null){
            String categoryName = (String) request.getParameter("category");
            ProductAction.getByCategory(request, categoryName);
        } else if (request.getParameter("name")!=null) {
            String productName = (String) request.getParameter("name");
            ProductAction.getByName(request, productName);
        } else {
            ProductAction.getAll(request);
        }
        request.getRequestDispatcher("WEB-INF/product.jsp").forward(request,response);

    }




}
