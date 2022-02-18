package emfos.Controller;

import emfos.DAO.cafeworkerDAO;
import emfos.DAO.studentDAO;
import emfos.Model.cafeworker;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "studentDeleteAccountServlet", value = "/studentDeleteAccountServlet")
public class studentDeleteAccountServlet extends HttpServlet {

    public studentDeleteAccountServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getParameter("Action").equals("Delete Account")){
            System.out.println("in");
            PrintWriter out = response.getWriter();

            studentDAO stdao = new studentDAO();

            String STUDENTID = request.getParameter("id");

            boolean result = stdao.deleteStudentAccount(STUDENTID);
            System.out.println(result);

            if (result == true){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Account deleted successfully!');");
                out.println("location='deletion.jsp';");
                out.println("</script>");
            }else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Account unsuccessfully deleted. Please try again.');");
                out.println("location='studentProfile.jsp';");
                out.println("</script>");
            }
        }

    }
}
