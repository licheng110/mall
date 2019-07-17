import com.mall.service.IOrderDao;
import com.mall.service.Order;
import com.mall.service.impl.OrderDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/orderSelect.do")
public class OrderSelectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IOrderDao iDao = new OrderDaoImpl();
        List<Order> oList = null;
        try {
            oList = iDao.getAllOrder();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("oList",oList);
        req.getRequestDispatcher("/uc-order.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
