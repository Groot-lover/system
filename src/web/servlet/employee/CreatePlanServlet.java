package web.servlet.employee;

import domain.Plan;
import org.apache.commons.beanutils.BeanUtils;
import service.EmployeeService;
import service.impl.EmployeeServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/createPlanServlet")
public class CreatePlanServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployeeService service=new EmployeeServiceImp();
        Plan plan=new Plan();
        Map<String,String[]>map=request.getParameterMap();
        try {
            BeanUtils.populate(plan ,map ) ;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        String task_id=request.getParameter("task_id");
        service.addPlan(plan);
        request.getRequestDispatcher("empDetailTaskServlet?id="+task_id).forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
