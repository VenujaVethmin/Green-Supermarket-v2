package Servlets;

import Classes.LatestProducts;
import Classes.Product;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.List;

@WebListener
public class LatestProductsServlet implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // Perform initialization tasks here, such as loading product data
        LatestProducts latestProducts = new LatestProducts();
        List<Product> productList = latestProducts.getProducts();

        

        // Store the product list in the application scope
        ServletContext servletContext = sce.getServletContext();
        servletContext.setAttribute("productList", productList);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Cleanup tasks can be performed here if needed
    }
}
