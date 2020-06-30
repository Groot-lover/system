package web.servlet.supervisor;

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

@WebServlet("/viewEmployeeServlet")
public class ViewEmployeeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminService service=new AdminServiceImp();
        List<User> users=service.findAll();
        request.setAttribute("users",users);
        request.getRequestDispatcher("/supervisor/view_employee.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
