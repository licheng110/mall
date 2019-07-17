
import com.mall.service.TrueSilaer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/sailerlogin.do")
public class SailerLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sjname = req.getParameter("sjname");
        String sjpassword = req.getParameter("sjpassword");
        sjname = new String(sjname.getBytes("iso-8859-1"),"UTF-8");
        System.out.println(sjname);
        sjpassword = new String(sjpassword.getBytes("iso-8859-1"),"UTF-8");
        System.out.println(sjpassword);
        TrueSailerDao dao = new TrueSailerDaoImpl();
        TrueSilaer trueSilaer = dao.selectBySjname(sjname);
        System.out.println(trueSilaer.getSjpassword());
        if(sjpassword.equals(trueSilaer.getSjpassword())){
            resp.sendRedirect("/login-success.jsp");
        }else{
            resp.sendRedirect("/login-fail.jsp");
        }
    }
}
