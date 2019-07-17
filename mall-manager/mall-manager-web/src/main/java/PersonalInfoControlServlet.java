
import com.mall.service.User;
import dao.PersonalInformationUserDaoImpl;
import dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/info.do")
public class PersonalInfoControlServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fun = req.getParameter("_method");
        switch (fun) {
            case "update":
                update(req, resp);
                break;
        }
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String truename = request.getParameter("truename");
        String birthday = request.getParameter("birthday");
        String sex = request.getParameter("sex");
        String email = request.getParameter("email");
//
//        int youzhengnum = Integer.valueOf(request.getParameter("youzhengnum"));

        truename = new String(truename.getBytes("iso-8859-1"),"UTF-8");
        birthday = new String(birthday.getBytes("iso-8859-1"),"UTF-8");
        sex = new String(sex.getBytes("iso-8859-1"),"UTF-8");
        email = new String(email.getBytes("iso-8859-1"),"UTF-8");
//        Emp emp = new Emp();
        User user = new User();
//        user.setUsername(username);
//        user.setPassword(password);
//        user.setPhone(phone);
        user.setTruename(truename);
        user.setBirthday(birthday);
        user.setSex(sex);
        user.setEmail(email);
        UserDao dao = new PersonalInformationUserDaoImpl();
        dao.updateUserInfo(user,"bb");
        response.sendRedirect("/info-success.jsp");
    }
}

