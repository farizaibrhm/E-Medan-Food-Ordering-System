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

            HttpSession session = request.getSession();

            try{
                if ((String) session.getAttribute("STUDENTNAME") == null){
                    response.sendRedirect("studentLogin.jsp");
                } else{

                    String masuk = (String) session.getAttribute("STUDENTID");
                    System.out.println(masuk);
                    Double amount = Double.parseDouble(request.getParameter("amount"));
                    Part filePart = request.getPart("PAYMENTRECEIPT");
                    String fileName = extractFileName(filePart);
                    String savePath = "C:\\Users\\Lenovo\\IdeaProjects\\E-Medan-Food-Ordering-System\\src\\main\\webapp\\receipt" + File.separator + fileName;
                    File fileSaveDir = new File(savePath);
                    filePart.write(savePath + File.separator);
                    boolean result = odao.placeOrder(masuk, amount, fileName, savePath);

                    if (result == true) {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Item has been placed.');");
                        out.println("location='studentOrderList.jsp';");
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
