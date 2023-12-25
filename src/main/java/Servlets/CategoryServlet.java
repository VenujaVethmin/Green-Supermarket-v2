package Servlets;

import Classes.Category;
import Classes.CategoryDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class CategoryServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Fetch categories from the context attribute
            List<Category> categories = (List<Category>) getServletContext().getAttribute("categories");

            // Set the list of categories as a request attribute
            request.setAttribute("categories", categories);

            // Forward to the JSP page for display
            RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace(); // Log the exception
            // Forward to an error page
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}
