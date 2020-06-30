package web.servlet.supervisor;

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
import java.io.IOException;
import java.util.List;

@WebServlet("/viewTsakServlet1")
public class ViewTsakServlet1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SupervisorService service=new SupervisorServiceImp();
        AdminService service2=new AdminServiceImp();
        List<Task> tasks=service.FinTask();
        request.setAttribute("tasks",tasks);
        List<User> users=service2.findAll();
        request.setAttribute("users",users);
        request.getRequestDispatcher("/supervisor/adjusting_tasks.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
