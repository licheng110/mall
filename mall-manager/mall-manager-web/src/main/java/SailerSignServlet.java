
import com.mall.service.Sailer;
import dao.SailerDao;
import dao.SailerDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/sailer.do")
public class SailerSignServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sjname = req.getParameter("sjname");
        String sjpassword = req.getParameter("sjpassword");
        String frname = req.getParameter("frname");
        int frage = Integer.valueOf(req.getParameter("frage"));
        String frbirnum = req.getParameter("frbirnum");
        String sjphone = req.getParameter("sjphone");
        String sjdz = req.getParameter("sjdz");

        sjname = new String(sjname.getBytes("iso-8859-1"),"UTF-8");
        System.out.println(sjname);
        sjpassword = new String(sjpassword.getBytes("iso-8859-1"),"UTF-8");
        frname = new String(frname.getBytes("iso-8859-1"),"UTF-8");
        frbirnum = new String(frbirnum.getBytes("iso-8859-1"),"UTF-8");
        sjphone = new String(sjphone.getBytes("iso-8859-1"),"UTF-8");
        sjdz = new String(sjdz.getBytes("iso-8859-1"),"UTF-8");
//        Emp emp = new Emp();
        Sailer sailer = new Sailer();
        sailer.setSjname(sjname);
        sailer.setSjpassword(sjpassword);
        sailer.setFrname(frname);
        sailer.setFrage(frage);
        sailer.setFrbirnum(frbirnum);
        sailer.setSjphone(sjphone);
        sailer.setSjdz(sjdz);
        SailerDao dao = new SailerDaoImpl();
        dao.insertSailer(sailer);
        resp.sendRedirect("/sailerSubmit.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
