package emfos.Controller;

import emfos.DAO.cafeworkerDAO;
import emfos.Model.cafeworker;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "cafeworkerDeleteAccountServlet", value = "/cafeworkerDeleteAccountServlet")
public class cafeworkerDeleteAccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private cafeworkerDAO cwdao;

    public cafeworkerDeleteAccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub //same like view

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub //same like view

        if (request.getParameter("Action").equals("Delete Account")){
            System.out.println("in");
            PrintWriter out = response.getWriter();

            cafeworker cw = new cafeworker();
            cafeworkerDAO cwdao = new cafeworkerDAO();

            String CWORKID = request.getParameter("id");

            boolean result = cwdao.deleteCafeWorkerAccount(CWORKID);
            System.out.println(result);

            if (result == true){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Account deleted successfully!');");
                out.println("location='deletion.jsp';");
                out.println("</script>");
            }else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Account unsuccessfully deleted. Please try again.');");
                out.println("location='cafeworkerProfile.jsp';");
                out.println("</script>");
            }
        }
    }
}