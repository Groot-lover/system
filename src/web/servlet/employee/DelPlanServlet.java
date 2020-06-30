package web.servlet.employee;

import service.EmployeeService;
import service.impl.EmployeeServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delPlanServlet")
public class DelPlanServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployeeService service=new EmployeeServiceImp();
        String id=request.getParameter("plan_id");
        service.delPlan(Integer.parseInt(id));
        String task_id=request.getParameter("task_id");
        request.getRequestDispatcher("empDetailTaskServlet?id="+task_id).forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
