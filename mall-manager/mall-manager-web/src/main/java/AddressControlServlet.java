
import com.mall.service.Address;
import com.mall.service.AddressDao;
import dao.AddressDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/address.do")
public class AddressControlServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fun = req.getParameter("_method");
        switch (fun) {
            case "insert":
                insert(req, resp);
                break;
            case "delete":
                delete(req, resp);
                break;
        }
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("UTF-8");
        String shouhuoren = req.getParameter("sjren");
        shouhuoren = new String(shouhuoren.getBytes("iso-8859-1"),"UTF-8");
        System.out.println(shouhuoren);
        AddressDao dao = new AddressDaoImpl();
        dao.deleteAddressByshouhuoren(shouhuoren);
        resp.sendRedirect("/alladdress.do");
    }

    public void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String shouhuoren = request.getParameter("shouhuoren");
        System.out.println(shouhuoren);
        String phonenum = request.getParameter("phonenum");
        System.out.println(phonenum);
        String dizhi = request.getParameter("dizhi");
        System.out.println(dizhi);
        int youzhengnum = Integer.valueOf(request.getParameter("youzhengnum"));
        shouhuoren = new String(shouhuoren.getBytes("iso-8859-1"),"UTF-8");
        phonenum = new String(phonenum.getBytes("iso-8859-1"),"UTF-8");
        dizhi = new String(dizhi.getBytes("iso-8859-1"),"UTF-8");
//        Emp emp = new Emp();
//        User user = new User();
        Address address = new Address();
//        user.setUsername(username);
//        user.setPassword(password);
//        user.setPhone(phone);
        address.setShouhuoren(shouhuoren);
        address.setPhonenum(phonenum);
        address.setDizhi(dizhi);
        address.setYouzhengnum(youzhengnum);
        AddressDao dao = new AddressDaoImpl();
        dao.insertAddress(address);
        response.sendRedirect("/alladdress.do");
    }
}