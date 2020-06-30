package web.servlet.admin;

import domain.User;
import service.AdminService;
import service.impl.AdminServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/dividerOutServlet")
public class DividerOutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminService service=new AdminServiceImp();
        request.removeAttribute("users");
        List<User> users=service.findAll();
        request.setAttribute("users",users);
        request.getRequestDispatcher("/admin/divide_out.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
