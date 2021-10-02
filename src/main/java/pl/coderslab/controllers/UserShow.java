package pl.coderslab.controllers;

import pl.coderslab.users.User;
import pl.coderslab.users.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/show")
public class UserShow extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            User user = UserDao.read(Integer.parseInt(request.getParameter("id")));
            request.setAttribute("user", user);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        getServletContext().getRequestDispatcher("/show.jsp")
                .forward(request, response);
    }
}
