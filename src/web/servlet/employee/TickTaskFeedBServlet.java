package web.servlet.employee;

import domain.Plan;
import domain.Task;
import service.EmployeeService;
import service.SupervisorService;
import service.impl.EmployeeServiceImp;
import service.impl.SupervisorServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/tickTsakFeedBServlet")
public class TickTaskFeedBServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String plan_id=request.getParameter("plan_id");
        SupervisorService service=new SupervisorServiceImp();
        Plan plan=service.findPlanId(Integer.parseInt(plan_id));
        request.setAttribute("plan",plan);
        request.getRequestDispatcher("/employee/ticking_task.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
