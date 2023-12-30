//package Servlets;
//
//import Classes.LatestProducts;
//import Classes.Product;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.List;
//import java.util.Objects;
//
//@WebServlet("/products")
//public class ProductsServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//        String cat = req.getParameter("cat");
//
//        if (cat == null || Objects.requireNonNull(cat).trim().isEmpty()) {
//            // Handle validation error, e.g., redirect to an error page
//            String errorMessage = "Invalid input. Please check your data.";
//            req.setAttribute("errorMessage", errorMessage);
//            req.getRequestDispatcher("/shop-grid.jsp").forward(req, resp);
//            return;
//        }
//        LatestProducts latestProducts = new LatestProducts();
//        List<Product> productList = latestProducts.getProducts(cat);
//
//        req.setAttribute("product", productList);
//
//        // Forward the request to a JSP page for rendering
//        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/shop-grid.jsp");
//        dispatcher.forward(req, resp);
//    }
//}
