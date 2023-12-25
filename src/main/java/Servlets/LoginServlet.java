package Servlets;

import Classes.CustomerLogin;
import Classes.CustomerRegister;
import Database.Dbconn;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Existing code...

        String email = req.getParameter("email");
        String password =  req.getParameter("password");

        // Validate input
        if (
                email == null || email.trim().isEmpty() ||
                        password == null || password.trim().isEmpty()
        ) {
            // Handle validation error, e.g., redirect to an error page
            String errorMessage = "Invalid input. Please check your data.";
            req.setAttribute("errorMessage", errorMessage);
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
            return;
        }
        // Validate user credentials
        CustomerLogin customerLogin = new CustomerLogin();
        boolean isValidUser = customerLogin.validate(email, password);

        if (isValidUser) {
            HttpSession session = req.getSession();

            // Set a session attribute named "username"
            session.setAttribute("email", email);

            // You can also set other attributes as needed
//            session.setAttribute("userRole", "admin");

            // Redirect to a new page or display a message
            resp.sendRedirect("index.jsp");

//            resp.sendRedirect("/");
        } else {
            // Display error message on login page
            String errorMessage = "Login failed. Invalid email or password.";
            req.setAttribute("errorMessage", errorMessage);
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
        }
    }
}
