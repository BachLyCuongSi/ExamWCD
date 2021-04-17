package com.minhan.servler;

import com.minhan.dao.PhoneDao;
import com.minhan.model.PhoneEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PhoneServlet", urlPatterns = {"/home"})
public class PhoneServlet extends HttpServlet {
    PhoneDao dao = new PhoneDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<PhoneEntity> phones = dao.getlistPhone();
        request.setAttribute("phones", phones);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
