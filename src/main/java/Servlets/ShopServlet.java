package Servlets;

import Classes.LatestProducts;
import Classes.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/shop")
public class ShopServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the category parameter from the request
        String category = request.getParameter("category");

        // Fetch the products based on the category (or all products if category is null)
        LatestProducts latestProducts = new LatestProducts();
        List<Product> productList = (category != null) ? latestProducts.getProductsByCategory(category) : latestProducts.getProducts();

        // Update the product list in the request attribute
        request.setAttribute("productList", productList);

        // Forward the request to the shop-grid.jsp page
        RequestDispatcher dispatcher = request.getRequestDispatcher("/shop-grid.jsp");
        dispatcher.forward(request, response);
    }
}
