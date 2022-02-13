package emfos;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "cafeworkerLoginServlet", value = "/cafeworkerLoginServlet")
public class cafeworkerLoginServlet extends HttpServlet {

    public cafeworkerLoginServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        cafeworkerDAO cwdao = new cafeworkerDAO();
        cafeworker cw = new cafeworker();

        cw.setCWORKID(request.getParameter("CWORKID"));
        cw.setCWORKPASSWORD(request.getParameter("CWORKPASSWORD"));

        if (cwdao.loginCafeworker(cw)){
            HttpSession session = request.getSession(true);

            session.setAttribute("CWORKID", cw.getCWORKID());
            session.setAttribute("CWORKSTALLNAME", cw.getCWORKSTALLNAME());
            session.setAttribute("CWORKPHONENO", cw.getCWORKPHONENO());
            session.setAttribute("CWORKEMAIL", cw.getCWORKEMAIL());
            session.setAttribute("CWORKPASSWORD", cw.getCWORKPASSWORD());
            session.setAttribute("CWORKACCNUM", cw.getCWORKACCNUM());
            session.setAttribute("CWORKACCNAME", cw.getCWORKACCNAME());
            session.setAttribute("CWORKBANKNAME", cw.getCWORKBANKNAME());

            session.setAttribute("currentCafeworker", cw);
            response.sendRedirect("cafeworkerMenuList.jsp");


        } else {
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('You have entered wrong credential. Please try again.');");
            response.sendRedirect("cafeworkerLogin.jsp");
            out.println("</script>");
        }

    }
}