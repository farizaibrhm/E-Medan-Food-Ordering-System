package emfos;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/cafeworkerDeleteAccountServlet")
public class cafeworkerDeleteAccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final cafeworkerDAO dao;
    public cafeworkerDeleteAccountServlet() {
        super();
        dao = new cafeworkerDAO();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        // TODO Auto-generated method stub
        String CWORKID = request.getParameter("CWORKID");
        dao.deleteCafeWorkerAccount(CWORKID);
        PrintWriter out = response.getWriter();
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Account deleted successfully!');");
        out.println("location='cafeworkerLogin.jsp';");
        out.println("</script>");
    }

}
