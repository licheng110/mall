
import com.mall.service.User;
import dao.UserDao;
import dao.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/sign.do")
public class ZhuceServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("yonghuming");
        System.out.println(username);
        String password = request.getParameter("mima");
        System.out.println(password);
        String phone = request.getParameter("shoujihao");
        System.out.println(phone);
        username = new String(username.getBytes("iso-8859-1"),"UTF-8");
        password = new String(password.getBytes("iso-8859-1"),"UTF-8");
        phone = new String(phone.getBytes("iso-8859-1"),"UTF-8");
//        Emp emp = new Emp();
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setPhone(phone);
        UserDao dao = new UserDaoImpl();
        dao.insertUser(user);
        response.sendRedirect("/signSuccess.jsp");
//        request.getRequestDispatcher("/user").forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
