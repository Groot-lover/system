package web.servlet.supervisor;

import domain.Plan;
import service.SupervisorService;
import service.impl.SupervisorServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/detailPlanServlet")
public class DetailPlanServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        String name=request.getParameter("taskname");
        SupervisorService service=new SupervisorServiceImp();
        Plan plan =service.findPlanId(Integer.parseInt(id));
        request.setAttribute("plan",plan);
        request.setAttribute("name",name);
        request.getRequestDispatcher("/supervisor/detail_plan.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
