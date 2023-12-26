package Servlets;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Classes.OrderDetail;
import Classes.PaymentServices;
import com.paypal.base.rest.PayPalRESTException;

@WebServlet("/authorize_payment")
public class AuthorizePaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AuthorizePaymentServlet() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String total = request.getParameter("totalPrice");

        OrderDetail orderDetail = new OrderDetail(total);

        try {
            PaymentServices paymentServices = new PaymentServices();
            String approvalLink = paymentServices.authorizePayment(orderDetail);

            response.sendRedirect(approvalLink);

        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            ex.printStackTrace();
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }



}