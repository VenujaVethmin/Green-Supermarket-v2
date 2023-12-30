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
    private ServletContext servletContext;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        this.servletContext = sce.getServletContext();
        updateProductList();
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Cleanup tasks can be performed here if needed
    }

    public void updateProductList() {
        // Fetch the latest products
        LatestProducts latestProducts = new LatestProducts();
        List<Product> productList = latestProducts.getProducts();

        // Update the product list in the application scope
        servletContext.setAttribute("productList", productList);
    }
}