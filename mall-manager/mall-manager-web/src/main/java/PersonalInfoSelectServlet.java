
import com.mall.service.User;
import dao.PersonalInformationUserDaoImpl;
import dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/selectinfo.do")
public class PersonalInfoSelectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //       获取用户填写的信息，并将信息添加到个人信息页面
//        IserviceDao service = new ServiceImpl();
        UserDao dao = new PersonalInformationUserDaoImpl();
        String username = "bb";
//         username = new String(username.getBytes("iso-8859-1"),"UTF-8");
        User user = dao.selectByUsername(username);
        System.out.println(user.getPhone());
        req.setAttribute("user",user);
        req.getRequestDispatcher("/uc-account-info.jsp").forward(req,resp);
    }
}
