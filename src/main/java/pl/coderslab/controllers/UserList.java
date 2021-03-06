package pl.coderslab.controllers;

import pl.coderslab.users.User;
import pl.coderslab.users.UserDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/user/list")
public class UserList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> users = UserDao.findAll();
        request.setAttribute("users", users);
        getServletContext().getRequestDispatcher("/list.jsp")
                .forward(request, response);
    }
}
