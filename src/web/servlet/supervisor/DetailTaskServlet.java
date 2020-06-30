package web.servlet.supervisor;

import domain.Plan;
import domain.Task;
import service.SupervisorService;
import service.impl.SupervisorServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/detailTaskServlet")
public class DetailTaskServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SupervisorService service=new SupervisorServiceImp();
        String id=request.getParameter("id");
        Task task=service.findTaskId(Integer.parseInt(id));
        List<Plan> plans=service.findPlan();
        request.setAttribute("plans",plans);
        request.setAttribute("task",task);
        request.getRequestDispatcher("/supervisor/detail_task.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
