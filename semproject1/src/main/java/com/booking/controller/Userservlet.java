package com.booking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.dao.Userdao;
import com.booking.model.User;

@WebServlet("/Userservlet")
public class Userservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        
        // Retrieve form parameters
        user.setUser_name(request.getParameter("user_name"));
        user.setPassword(request.getParameter("password"));
        user.setEmail(request.getParameter("email")); // Ensure correct case
        user.setPhone_number(request.getParameter("phone_number"));

        Userdao userdao = new Userdao();
        
        // Insert user and set appropriate message
        if (userdao.insertuser(user)) {
            request.setAttribute("message", "Data is successfully added");
        } else {
            request.setAttribute("message", "Data addition failed");
        }
        
        // Forward to result page
        request.getRequestDispatcher("operationResult.jsp").forward(request, response);
    }
}
