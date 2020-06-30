package web.servlet.supervisor;

import domain.Task;
import org.apache.commons.beanutils.BeanUtils;
import service.SupervisorService;
import service.impl.SupervisorServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/addTaskServlet")
public class AddTaskServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SupervisorService service=new SupervisorServiceImp();
        Map<String,String[]> map=request.getParameterMap();
        Task addTask=new Task();
        try {
            BeanUtils.populate(addTask ,map ) ;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        service.addTask(addTask);
        request.getRequestDispatcher("viewTsakServlet").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
