package Servlets;

import Classes.AdminAddProduct;
import Classes.LatestProducts;
import Classes.Product;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/AddProduct")
public class AdminAddProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        String description = req.getParameter("description");
        float price = Float.parseFloat(req.getParameter("price"));
        String category = req.getParameter("category");

        AdminAddProduct adminAddProduct = new AdminAddProduct();

        try {
            adminAddProduct.insertProduct(name, quantity, description, price, category);
            req.setAttribute("message", "Product added successfully!");

            // After adding the product, update the product list
            updateProductList(req.getServletContext());

            req.getRequestDispatcher("profile.jsp").forward(req, resp);
        } catch (SQLException | ClassNotFoundException e) {
            // Log the exception or include it in the request attribute for better error reporting
            e.printStackTrace();

            req.setAttribute("errorMessage", "Error adding product: " + e.getMessage());
            req.getRequestDispatcher("profile.jsp").forward(req, resp);
        }
    }

    private void updateProductList(ServletContext servletContext) {
        // Fetch the latest products
        LatestProducts latestProducts = new LatestProducts();
        List<Product> productList = latestProducts.getProducts();

        // Update the product list in the application scope
        servletContext.setAttribute("productList", productList);
    }
}