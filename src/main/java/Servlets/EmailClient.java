package Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.resend.*;
import com.resend.core.exception.ResendException;
import com.resend.services.emails.model.SendEmailRequest;
import com.resend.services.emails.model.SendEmailResponse;

import java.io.IOException;

@WebServlet("/testEmail")
public class EmailClient extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Resend resend = new Resend("re_F5yCQhfz_EfBvBeCvh2a8QLo11bsXmszS");

        SendEmailRequest sendEmailRequest = SendEmailRequest.builder()
                .from("onboarding@resend.dev")
                .to("wpulindu49@gmail.com")
                .subject("Pake Java")
                .html("<p>Randika Gobbaya Randikage Gaani Gobbaya<strong>first email</strong>!</p>")
                .build();
        System.out.println("email sent");

        try {
            SendEmailResponse data = resend.emails().send(sendEmailRequest);
        } catch (ResendException e) {
            throw new RuntimeException(e);
        }


    }
}




