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

@WebServlet("/orderRefund.do")
public class OrderRefundServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String orderNo = req.getParameter("orderNo");
        IOrderDao iDao = new OrderDaoImpl();
        Order order = null;
        try {
            order = iDao.getOrderByOrderNo(orderNo);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("order",order);
        req.getRequestDispatcher("/uc-apply-refund.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
