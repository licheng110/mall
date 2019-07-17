import com.mall.service.ICartDao;
import com.mall.service.impl.CartDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/cartAdd.do")
public class CartAddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        int num = Integer.parseInt(req.getParameter("num"));
        String shop = req.getParameter("shop");
        String address = req.getParameter("address");
        ICartDao cDao = new CartDaoImpl();
        try {
            cDao.addProduct(name,price,num,shop,address);
            req.getRequestDispatcher("/cartSelect.do").forward(req,resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
