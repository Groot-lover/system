package web.servlet.employee;

import domain.Task;
import domain.User;
import service.AdminService;
import service.SupervisorService;
import service.impl.AdminServiceImp;
import service.impl.SupervisorServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/empTsakServlet")
public class EmpTsakServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SupervisorService service=new SupervisorServiceImp();
        AdminService service2=new AdminServiceImp();
        List<Task> tasks=service.FinTask();
        request.setAttribute("tasks",tasks);
        List<User> users=service2.findAll();
        request.setAttribute("users",users);
        String id=request.getParameter("id");
        HttpSession session=request.getSession();
        session.setAttribute("loginid",id);
        request.getRequestDispatcher("/employee/management_task.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}