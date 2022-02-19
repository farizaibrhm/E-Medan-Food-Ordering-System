package emfos.Controller;

import emfos.DAO.orderDAO;
import emfos.Model.order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "cafeworkerOrderServlet", value = "/cafeworkerOrderServlet")
public class cafeworkerOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("in");
        PrintWriter out = response.getWriter();

        orderDAO odao = new orderDAO();
        order uporder = new order();

        String orderid = request.getParameter("ORDERNO");

        if (!((orderid) == null))
        {
            int sid = Integer.parseInt(orderid);
            uporder.setORDERNO(sid);
        }

        uporder.setORDERSTATUS(request.getParameter("ORDERSTATUS"));

        boolean result = odao.updateOrder(uporder);
        System.out.println(result);


        if (result == true)
        {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Order Status Updated!');");
            out.println("location='cafeworkerOrderList.jsp';");
            out.println("</script>");
        }
        else
        {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Order unsuccessfully updated. Please try again.');");
            out.println("location='cafeworkerOrderList.jsp';");
            out.println("</script>");
        }

    }
}
