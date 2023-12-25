package Servlets;

import Classes.Category;
import Classes.Categorydb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/c")
public class CategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Categorydb categorydb = new Categorydb();
        List<Category> categories = categorydb.getCategory();

        // Set the product list as a request attribute
        req.setAttribute("c", categories);

        // Forward to the JSP page for display
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
