package web.servlet.employee;

import domain.Plan;
import domain.ResultPlan;
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
import java.util.List;
import java.util.Map;

@WebServlet("/querPlanRServlet")
public class QuerPlanRServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ResultPlan resultPlan=new ResultPlan();
        Map<String,String[]> map=request.getParameterMap();
        try {
            BeanUtils.populate(resultPlan ,map ) ;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        EmployeeService service=new EmployeeServiceImp();
        List<Plan> plans=service.findLike(resultPlan);
        request.removeAttribute("plans");
        request.setAttribute("plans",plans);
        request.getRequestDispatcher("/employee/query_result_plan.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
