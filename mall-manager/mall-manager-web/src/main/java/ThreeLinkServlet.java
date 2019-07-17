import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/three.do")
public class ThreeLinkServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
    String province = request.getParameter("province");
    String city =  request.getParameter("city");
    String area = request.getParameter("area");
    province = new String(province.getBytes("iso-8859-1"),"UTF-8");
    System.out.println(province);
    city = new String(city.getBytes("iso-8859-1"),"UTF-8");
    area = new String(area.getBytes("iso-8859-1"),"UTF-8");
    String address =province+city+area;
    request.setAttribute("address",address);
    request.getRequestDispatcher("uc-address.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
