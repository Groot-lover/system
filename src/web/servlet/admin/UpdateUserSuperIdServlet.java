package web.servlet.admin;

import service.AdminService;
import service.impl.AdminServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateUserSuperIdServlet")
public class UpdateUserSuperIdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String id= request.getParameter("id");
       String super_id=request.getParameter("super_id");
        AdminService service=new AdminServiceImp();
        service.updateSuperId(Integer.parseInt(id),Integer.parseInt(super_id));
        request.getRequestDispatcher("inqurie_employeeServlet").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
