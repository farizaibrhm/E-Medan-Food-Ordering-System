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
                    int menuid= Integer.parseInt(request.getParameter("menuid"));
                    crt.setMENUID(menuid);
                    crt.setCARTPRICE(Double.parseDouble(request.getParameter("price")));
                    crt.setCARTTOTALPRICE(Double.parseDouble(request.getParameter("price")));
                    crt.setCWORKID(request.getParameter("cafeid"));
                    String stuid = (String) session.getAttribute("STUDENTID");
                    crt.setSTUDENTID(stuid);

                    int menuid2 = cdao.getMenuByMenuID(menuid, stuid);
                    System.out.println(menuid == menuid2);

                    if (menuid == menuid2){

                        int quantity = cdao.getQuantityByMENUID(menuid, stuid);
                        Double price = cdao.getPriceByMenuID(menuid, stuid);
                        Double totalprice = price * quantity;

                        crt.setMENUID(menuid);
                        crt.setCARTQUANTITY(quantity);
                        crt.setCARTTOTALPRICE(totalprice);
                        crt.setSTUDENTID(stuid);

                        boolean result2 = cdao.updateQuantity(crt);
                        System.out.println("add the same item, only update quantity");
                        if (result2 == true) {

                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Item successfully added to cart!');");
                            out.println("location='index.jsp';");
                            out.println("</script>");
                        } else {
                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Item unsuccessfully added to cart. Please try again.');");
                            out.println("location='index.jsp';");
                            out.println("</script>");
                        }
                    }else{
                        boolean result = cdao.addItemToCart(crt);
                        System.out.println(result);

                        if (result == true) {

                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Item successfully added to cart!');");
                            out.println("location='index.jsp';");
                            out.println("</script>");
                        } else {
                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Item unsuccessfully added to cart. Please try again.');");
                            out.println("location='index.jsp';");
                            out.println("</script>");
                        }
                    }


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

        if (request.getParameter("Action").equals("x")) {
            System.out.println("in");
            PrintWriter out = response.getWriter();

            cart crt = new cart();
            cartDAO cdao = new cartDAO();

            HttpSession session = request.getSession();

            String cid = request.getParameter("id");
            if (!((cid) == null)) {
                int id = Integer.parseInt(cid);
                String stuid = (String) session.getAttribute("STUDENTID");

                cdao.getItemByMENUID(id, stuid);
                boolean result = cdao.removeItemFromCart(id, stuid);

                if (result == true) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Item successfully removed from cart!');");
                    out.println("location='studentCart.jsp';");
                    out.println("</script>");
                } else {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Item unsuccessfully removed from cart. Please try again.');");
                    out.println("location='studentCart.jsp';");
                    out.println("</script>");
                }
            }else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('ID not found.');");
                out.println("location='studentCart.jsp';");
                out.println("</script>");
            }
        }

    }
}
