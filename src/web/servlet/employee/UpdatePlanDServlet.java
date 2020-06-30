package web.servlet.employee;

import service.EmployeeService;
import service.impl.EmployeeServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updatePlanDServlet")
public class UpdatePlanDServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String plan_id=request.getParameter("plan_id");
        String plan_state=request.getParameter("plan_state");
        String feedback=request.getParameter("feedback");
        String plan_feedback=request.getParameter("plan_feedback");
        EmployeeService service=new EmployeeServiceImp();
        service.updatePlan(Integer.parseInt(plan_id),plan_state,feedback,plan_feedback);
        String task_id=request.getParameter("task_id");
        request.getRequestDispatcher("empDetailTaskServlet?id="+task_id).forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
