
import com.mall.service.User;
import dao.UserDao;
import dao.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updatepw.do")
public class UpdatePassWordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String newpassword = req.getParameter("newpassword");
        String surepassword = req.getParameter("surepassword");
        if (!newpassword.equals(surepassword)){
            resp.sendRedirect("fail-reset-pw.jsp");
        }else {
            User user = new User();
            user.setPassword(newpassword);
            user.setUsername("bb");
            UserDao dao = new UserDaoImpl();
            dao.updateUser(user);
            resp.sendRedirect("uc-verify3.jsp");
        }

    }
}
