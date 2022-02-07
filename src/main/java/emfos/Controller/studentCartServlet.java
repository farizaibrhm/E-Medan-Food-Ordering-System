package emfos.Controller;

import emfos.DAO.cartDAO;
import emfos.DBConnect.DBConnection;
import emfos.Model.cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "studentCartServlet", value = "/studentCartServlet")
public class studentCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public studentCartServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getParameter("Action").equals("Add to Cart")) {
            System.out.println("in");
            PrintWriter out = response.getWriter();

            cart crt = new cart();
            cartDAO cdao = new cartDAO();

            HttpSession session = request.getSession();

            try{
                if ((String) session.getAttribute("STUDENTNAME") == null){
                    response.sendRedirect("studentLogin.jsp");
                }else {
                    crt.setMENUID(Integer.parseInt(request.getParameter("menuid")));
                    crt.setCARTPRICE(Double.parseDouble(request.getParameter("price")));
                    crt.setCARTTOTALPRICE(Double.parseDouble(request.getParameter("price")));
                    crt.setCWORKID(request.getParameter("cafeid"));
                    crt.setSTUDENTID((String) session.getAttribute("STUDENTID"));

                    boolean result = cdao.addItemToCart(crt);
                    System.out.println(result);

                    if (result == true) {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Item successfully added to cart!');");
                        out.println("location='GeraiAMenuList.jsp';");
                        out.println("</script>");
                    } else {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Item unsuccessfully added to cart. Please try again.');");
                        out.println("location='GeraiAMenuList.jsp';");
                        out.println("</script>");
                    }
                    RequestDispatcher dispatcher = request.getRequestDispatcher("GeraiAMenuList.jsp");
                    dispatcher.include(request, response);

                }
            }catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (request.getParameter("Action").equals("Update Quantity")) {
            System.out.println("in");
            PrintWriter out = response.getWriter();

            cart crt = new cart();
            cartDAO cdao = new cartDAO();

            HttpSession session = request.getSession();

            int id = Integer.parseInt(request.getParameter("menuid"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String stuid = (String) session.getAttribute("STUDENTID");

            Double price = cdao.getPriceByMenuID(id, stuid);
            Double totalprice = price * quantity;

                    crt.setMENUID(id);
                    crt.setCARTQUANTITY(quantity);
                    crt.setCARTTOTALPRICE(totalprice);
                    crt.setSTUDENTID(stuid);

                    boolean result = cdao.updateQuantity(crt);
                    System.out.println(result);

                    if (result == true) {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Item successfully added to cart!');");
                        out.println("location='studentCart.jsp';");
                        out.println("</script>");
                    } else {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Item unsuccessfully added to cart. Please try again.');");
                        out.println("location='studentCart.jsp';");
                        out.println("</script>");
                    }
        }

    }
}
