package emfos.Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

import emfos.DAO.studentDAO;
import emfos.Model.student;

@WebServlet(name = "studentRegisterServlet", value = "/studentRegisterServlet")
public class studentRegisterServlet extends HttpServlet {
    public studentRegisterServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        student streg = new student();

        streg.setSTUDENTID(request.getParameter("STUDENTID"));
        streg.setSTUDENTNAME(request.getParameter("STUDENTNAME"));
        streg.setSTUDENTPHONENO(request.getParameter("STUDENTPHONENO"));
        streg.setSTUDENTEMAIL(request.getParameter("STUDENTEMAIL"));
        streg.setSTUDENTPASSWORD(request.getParameter("STUDENTPASSWORD"));

        String STUDENTID = request.getParameter("STUDENTID");

        if (STUDENTID != null){
            studentDAO stdao = new studentDAO();
            String result = stdao.registerStudent(streg);

            if (result != null){
                PrintWriter out = response.getWriter();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('User successfully registered!');");
                out.println("location='studentLogin.jsp';");
                out.println("</script>");
            } else{
                PrintWriter out = response.getWriter();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('User registration failed. Please try again.');");
                out.println("location='studentRegister.jsp';");
                out.println("</script>");
            }
        }
    }
}
