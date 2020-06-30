package web.servlet.admin;

import domain.User;
import service.AdminService;
import service.impl.AdminServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/divideUserServlet")
public class DivideUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
//        request.setAttribute("emp_id",id);
        AdminService service=new AdminServiceImp();
        List<User> users=service.findAll();
        User user=service.findId(Integer.parseInt(id));
        request.setAttribute("user",user);
        request.setAttribute("users",users);
        request.getRequestDispatcher("/admin/divide_user.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
