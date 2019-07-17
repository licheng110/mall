import com.mall.service.Cart;
import com.mall.service.ICartDao;
import com.mall.service.IOrderDao;
import com.mall.service.Order;
import com.mall.service.impl.CartDaoImpl;
import com.mall.service.impl.OrderDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/cartConfirm.do")
public class CartConfirmServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String checkBox[] = req.getParameterValues("checkbox");
        System.out.println(checkBox);
        ICartDao cDao = new CartDaoImpl();
        Cart cart = null;
        List<Cart> cList = new ArrayList<>();
        if (checkBox != null){
            for (int i = 0 ; i < checkBox.length ; i++){
                try {
                    cart = cDao.getProductByName(checkBox[i]);
                    System.out.println(cart);
                    cList.add(cart);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                System.out.println(checkBox[i]);
            }
        }
        req.setAttribute("cList",cList);
        req.getRequestDispatcher("/confirm-order.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
