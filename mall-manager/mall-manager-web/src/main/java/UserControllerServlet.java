import dao.UserDao;
import dao.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user.do")
public class UserControllerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fun = req.getParameter("_method");
        switch (fun) {
            case "delete":
                delete(req, resp);
                break;
        }
    }


    public void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String useranme = req.getParameter("username");
//            IserviceDao service = new ServiceImpl();
            UserDao dao = new UserDaoImpl();
//            service.deleteEmp(empno);
            dao.deleteUserByUsername(useranme);
            resp.sendRedirect("/user");
        }
}



