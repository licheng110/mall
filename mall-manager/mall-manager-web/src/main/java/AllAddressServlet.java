
import com.mall.service.Address;
import com.mall.service.AddressDao;
import dao.AddressDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/alladdress.do")
public class AllAddressServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AddressDao dao = new AddressDaoImpl();
        List<Address> addressList = dao.selectAll();
        req.setAttribute("addressList", addressList);
        System.out.println(req.getAttribute("addressList"));
        req.getRequestDispatcher("/uc-address.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req,resp);
    }
}
