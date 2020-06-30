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

@WebServlet("/userInformationServlet")
public class UserInformationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminService service=new AdminServiceImp();
        String id=request.getParameter("id");
        User user=service.findId(Integer.parseInt(id));
        request.setAttribute("user",user);
        request.getRequestDispatcher("/admin/user_information.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
