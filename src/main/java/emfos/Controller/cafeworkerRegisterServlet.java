package emfos.Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

import emfos.DAO.cafeworkerDAO;
import emfos.Model.cafeworker;


@WebServlet(name = "cafeworkerRegisterServlet", value = "/cafeworkerRegisterServlet")
public class cafeworkerRegisterServlet extends HttpServlet {

    public cafeworkerRegisterServlet(){
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        cafeworker cwreg = new cafeworker();

        cwreg.setCWORKID(request.getParameter("CWORKID"));
        cwreg.setCWORKSTALLNAME(request.getParameter("CWORKSTALLNAME"));
        cwreg.setCWORKPHONENO(request.getParameter("CWORKPHONENO"));
        cwreg.setCWORKEMAIL(request.getParameter("CWORKEMAIL"));
        cwreg.setCWORKPASSWORD(request.getParameter("CWORKPASSWORD"));
        cwreg.setCWORKACCNUM(request.getParameter("CWORKACCNUM"));
        cwreg.setCWORKACCNAME(request.getParameter("CWORKACCNAME"));
        cwreg.setCWORKBANKNAME(request.getParameter("CWORKBANKNAME"));

        String CWORKID = request.getParameter("CWORKID");

        if (CWORKID != null ){
            cafeworkerDAO cwdao = new cafeworkerDAO();
            String result = cwdao.registerCafeworker(cwreg);

            if (result != null) {
                PrintWriter out = response.getWriter();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('User successfully registered!');");
                out.println("location='cafeworkerLogin.jsp';");
                out.println("</script>");
            } else{
                PrintWriter out = response.getWriter();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('User registration failed. Please try again.');");
                out.println("location='cafeworkerRegister.jsp';");
                out.println("</script>");

            }
        }
    }
}
