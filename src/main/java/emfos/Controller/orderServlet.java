package emfos.Controller;

import emfos.DAO.cartDAO;
import emfos.DAO.orderDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "orderServlet", value = "/orderServlet")
public class orderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public orderServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("Action").equals("Place Order")){
            System.out.println("in");
            PrintWriter out = response.getWriter();

            orderDAO odao = new orderDAO();
            cartDAO cdao = new cartDAO();

            HttpSession session = request.getSession();

            try{
                if ((String) session.getAttribute("STUDENTNAME") == null){
                    response.sendRedirect("studentLogin.jsp");
                } else{

                    String masuk = (String) session.getAttribute("STUDENTID");
                    System.out.println(masuk);
                    Double amount = Double.parseDouble(request.getParameter("amount"));

                    boolean result = odao.placeOrder(masuk, amount);

                    if (result == true) {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Item has been placed. Thank you for your order.');");
                        out.println("location='index.jsp';");
                        out.println("</script>");
                    } else {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Item can't be placed. Please try again.');");
                        out.println("location='studentCart.jsp';");
                        out.println("</script>");
                    }

                    cdao.deleteCartOnceOrderHasBeenPlaced(masuk);

                }
            } catch (Exception e){
                e.printStackTrace();
            }
        }

    }
}
