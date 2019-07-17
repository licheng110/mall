import com.mall.service.IOrderDao;
import com.mall.service.Order;
import com.mall.service.impl.OrderDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/submitRefundApply.do")
public class SubmitRefundApplyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String receiptState = req.getParameter("receiptState");
        String refundReason = req.getParameter("refundReason");
        String refundAmount = req.getParameter("refundAmount");
        HttpSession session = req.getSession();
        String orderNo = (String) session.getAttribute("orderNo");
        System.out.println(receiptState);
        System.out.println(refundReason);
        System.out.println(refundAmount);
        System.out.println(orderNo);
        IOrderDao iDao = new OrderDaoImpl();
        try {
            iDao.submitRefundApply(receiptState,refundReason,refundAmount,orderNo);
        } catch (SQLException e) {
            e.printStackTrace();
        }
//        req.getRequestDispatcher("/uc-apply-refund.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
