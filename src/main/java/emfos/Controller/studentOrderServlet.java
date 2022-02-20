package emfos.Controller;
import emfos.DAO.cartDAO;
import emfos.DAO.orderDAO;
import javax.servlet.*;
import java.io.File;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "studentOrderServlet", value = "/studentOrderServlet")
@MultipartConfig(maxFileSize = 16177215)//16mb

public class studentOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public studentOrderServlet() {
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

            String applicationPath = getServletContext().getRealPath("");
            HttpSession session = request.getSession();

            try{
                if ((String) session.getAttribute("STUDENTNAME") == null){
                    response.sendRedirect("studentLogin.jsp");
                } else{

                    String masuk = (String) session.getAttribute("STUDENTID");
                    System.out.println(masuk);
                    Double amount = Double.parseDouble(request.getParameter("amount"));
                    Part filePart = request.getPart("PAYMENTRECEIPT");


                    String host = request.getHeader("X-Forwarded-Proto") + "://" + "e-medanfoodorderingsystem.herokuapp.com" + "/";
                    System.out.println(host);

                    String fileName = filePart.getSubmittedFileName();

                    String urlPathForDB = host + "receipt/" + fileName;
                    String savePath = applicationPath + "receipt" + File.separator + fileName;

                    new File(applicationPath + "receipt").mkdir();
                    filePart.write(savePath);

                    boolean result = odao.placeOrder(masuk, amount, fileName, urlPathForDB);

                    if (result == true) {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Order has been placed.');");
                        out.println("location='studentOrderList.jsp';");
                        out.println("</script>");
                    } else {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Order can't be placed. Please try again.');");
                        out.println("location='studentCart.jsp';");
                        out.println("</script>");
                    }
                    cdao.deleteCartOnceOrderHasBeenPlaced(masuk);
                }
            } catch (Exception e){
                e.printStackTrace();
            }
        }

        if (request.getParameter("Action").equals("Cancel")){
            System.out.println("in");
            PrintWriter out = response.getWriter();

            orderDAO odao = new orderDAO();

            HttpSession session = request.getSession();

            String oid = request.getParameter("id");
            if (!((oid) == null)) {
                int id = Integer.parseInt(oid);
                String stuid = (String) session.getAttribute("STUDENTID");

                odao.getOrderByORDERID(id, stuid);
                boolean result = odao.cancelOrder(id, stuid);

                if (result == true) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Your order has been cancelled.');");
                    out.println("location='studentOrderList.jsp';");
                    out.println("</script>");
                } else {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('An error occurred while trying to cancel your order. Please try again.');");
                    out.println("location='studentOrderList.jsp';");
                    out.println("</script>");
                }
            }else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('ID not found.');");
                out.println("location='studentOrderList.jsp';");
                out.println("</script>");
            }

        }
    }

    private String extractFileName (Part filePart)
    {
        String contentDisp = filePart.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s: items){
            if (s.trim().startsWith("filename")){
                return s.substring(s.indexOf("=") + 2, s.length() -1);
            }
        }
        return "";
    }
}
