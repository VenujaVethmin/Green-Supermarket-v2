package Servlets;

import Classes.CustomerRegister;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validate input
        if (username == null || username.trim().isEmpty() ||
                email == null || email.trim().isEmpty() ||
                password == null || password.trim().isEmpty()
                ) {
            // Handle validation error, e.g., redirect to an error page
            String errorMessage = "Invalid input. Please check your data.";
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("Register.jsp").forward(request, response);
            return;
        }

//        String verificationCode = UUID.randomUUID().toString();



        // Inserting data into the database
        CustomerRegister customerDao = new CustomerRegister();
        try {
            customerDao.insertUser(username, email, password);
            request.setAttribute("regi","ow ow pakaya register una hariyata,dn pakaya vage log viyan weesaawa" );
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } catch (SQLException | ClassNotFoundException e) {
            request.setAttribute("errorMessage", e.getMessage());
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        }

        // You can redirect to a success page or do any other necessary actions.

    }
}
