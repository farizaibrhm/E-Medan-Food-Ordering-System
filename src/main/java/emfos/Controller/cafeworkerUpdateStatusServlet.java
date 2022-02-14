package emfos.Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;


import emfos.DAO.orderDAO;
import emfos.Model.order;


@WebServlet(name = "cafeworkerUpdateStatusServlet", value = "/cafeworkerUpdateStatusServlet")
public class cafeworkerUpdateStatusServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        System.out.println("in");
        PrintWriter out = response.getWriter();

        orderDAO odao = new orderDAO();
        order uporder = new order();

        String orderid = request.getParameter("ORDERID");

        if (!((orderid) == null))
        {
            int sid = Integer.parseInt(orderid);
            uporder.setORDERID(sid);
        }

        uporder.setORDERSTATUS(request.getParameter("ORDERSTATUS"));

        request.setAttribute("uporder",uporder);

        boolean result = odao.updateOrder(uporder);
        System.out.println(result);


        if (result == true)
        {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Order Status Updated!');");
            out.println("location='cafeworkerUpdateStatusOrder.jsp';");
            out.println("</script>");
        }
        else
        {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Order unsuccessfully updated. Please try again.');");
            out.println("location='cafeworkerUpdateStatusOrder.jsp';");
            out.println("</script>");
        }
    }

}
