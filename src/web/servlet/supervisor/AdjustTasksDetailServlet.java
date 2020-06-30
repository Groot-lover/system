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

@WebServlet("/adjustTasksDetailServlet")
public class AdjustTasksDetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        SupervisorService service=new SupervisorServiceImp();
        Task task = service.findTaskId(Integer.parseInt(id));
        request.setAttribute("task",task);
        AdminService service2=new AdminServiceImp();
        List<User> users=service2.findAll();
        request.setAttribute("users",users);
        request.getRequestDispatcher("/supervisor/adjust_tasks_detail.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
