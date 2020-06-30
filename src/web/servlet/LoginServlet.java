package web.servlet;

import domain.User;
import org.apache.commons.beanutils.BeanUtils;
import service.LoginService;
import service.impl.LoginServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        Map<String,String[]>map=request.getParameterMap();
        LoginService service=new LoginServiceImpl();
        User loginUser=new User();
        try {
            BeanUtils.populate(loginUser ,map ) ;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        User user=service.login(loginUser);//
        if (user == null) {
            request.setAttribute("cc_error", "用户名或密码或职位错误");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } else {
            session.setAttribute("user", user);
            request.setAttribute("user", user);
            String identity= user.getFlag();
            response.sendRedirect(request.getContextPath()+"/"+identity+"/"+identity+"_login.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
