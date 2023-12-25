package Servlets;

import Classes.Category;
import Classes.CategoryDAO;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.List;

@WebListener
public class CategoryServlet implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            // Fetch categories from the database
            CategoryDAO categoryDAO = new CategoryDAO();
            List<Category> categories = categoryDAO.getAllCategories();

            // Store the category list in the application scope
            ServletContext servletContext = sce.getServletContext();
            servletContext.setAttribute("categories", categories);
        } catch (Exception e) {
            e.printStackTrace(); // Log the exception
            // Handle the exception as needed
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Cleanup tasks can be performed here if needed
    }
}
