package emfos.Controller;

import emfos.DAO.cartDAO;
import emfos.DAO.menuDAO;
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
            menuDAO mdao = new menuDAO();

            HttpSession session = request.getSession();

            try{
                if ((String) session.getAttribute("STUDENTNAME") == null){
                    response.sendRedirect("studentLogin.jsp");
                }else {
                    int menuid= Integer.parseInt(request.getParameter("menuid"));
                    String cafeid = request.getParameter("cafeid");
                    String stuid = (String) session.getAttribute("STUDENTID");

                    crt.setMENUID(menuid);
                    crt.setCWORKID(cafeid);
                    crt.setSTUDENTID(stuid);

                    int menuInCart = cdao.getMenuByMenuID(menuid, stuid);
                    int countCart = cdao.selectAll(stuid);
                    int menuGeraiInCart = cdao.getMenuByCafeID(menuid, cafeid, stuid);

                    //add same item, only update quantity
                    if (menuid == menuInCart ){

                        int quantity = cdao.getQuantityByMENUID(menuid, stuid);

                        crt.setMENUID(menuid);
                        crt.setCARTQUANTITY(quantity);
                        crt.setSTUDENTID(stuid);

                        boolean result2 = cdao.updateQuantity(crt);
                        if (result2 == true) {

                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Item successfully added to cart!');");
                            out.println("location='studentCart.jsp';");
                            out.println("</script>");

                        } else {

                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Item unsuccessfully added to cart. Please try again.');");
                            out.println("location='index.jsp';");
                            out.println("</script>");

                        }//if selected menu from different gerai, alert error msg.
                    }  else{
                        boolean result = cdao.addItemToCart(crt);
                        System.out.println(result);

                        if (result == true) {

                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Item successfully added to cart!');");
                            out.println("location='studentCart.jsp';");
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
            menuDAO mdao = new menuDAO();

            HttpSession session = request.getSession();

            int id = Integer.parseInt(request.getParameter("menuid"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String stuid = (String) session.getAttribute("STUDENTID");


                    crt.setMENUID(id);
                    crt.setCARTQUANTITY(quantity);
                    crt.setSTUDENTID(stuid);

                    boolean result = cdao.updateQuantity(crt);
                    System.out.println(result);

                    if (result == true) {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Quantity of the item has been updated!');");
                        out.println("location='studentCart.jsp';");
                        out.println("</script>");
                    } else {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Quantity of the item is unsuccessfully updated. Please try again.');");
                        out.println("location='studentCart.jsp';");
                        out.println("</script>");
                    }
        }

        if (request.getParameter("Action").equals("x")) {
            System.out.println("in");
            PrintWriter out = response.getWriter();

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

//    else if(menuid != menuGeraiInCart){
//
//        out.println("<script type=\"text/javascript\">");
//        out.println("alert('You have already selected different gerai. Remove your previous item first before continue.');");
//        out.println("</script>");
//    }

}
