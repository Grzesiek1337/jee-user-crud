package pl.coderslab.controllers;

import pl.coderslab.users.User;
import pl.coderslab.users.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/delete")
public class UserDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            User user = UserDao.read(Integer.parseInt(request.getParameter("id")));
            request.setAttribute("user", user);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        getServletContext().getRequestDispatcher("/delete.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (request.getParameter("decision").equals("Yes")) {
            UserDao.delete(Integer.parseInt(request.getParameter("id")));
            response.sendRedirect(request.getContextPath() + "/user/list");
        } else {
            response.sendRedirect(request.getContextPath() + "/user/list");
        }
    }
}