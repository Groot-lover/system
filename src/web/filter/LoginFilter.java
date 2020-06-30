package web.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/*")
public class LoginFilter implements Filter {
    public void destroy() {
    }
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request= (HttpServletRequest) req;
        HttpServletResponse response= (HttpServletResponse) resp;
        String uri=request.getRequestURI();
//        System.out.println(uri);
        if (uri.equals("/system/"))uri+="index.jsp";
        if (uri.contains("index.jsp")||uri.contains("/loginServlet")||uri.contains("/imgs/")){
            chain.doFilter(req, resp);
        }else {
            Object user=request.getSession().getAttribute("user");
            if (user!=null){
                chain.doFilter(req, resp);
            }else {
                request.setAttribute("cc_error","您尚未登录，请先登录");
                request.getRequestDispatcher("/index.jsp").forward(request,response);
            }
        }
    }
    public void init(FilterConfig config) throws ServletException {
    }

}
