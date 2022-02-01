package emfos;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "cafeworkerUpdateProfileServlet", value = "/cafeworkerUpdateProfileServlet")
public class cafeworkerUpdateProfileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static String EDIT = "cafeworkerProfile.jsp";
    private  cafeworkerDAO cwdao;

    public cafeworkerUpdateProfileServlet() {
        super();
        cwdao = new cafeworkerDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("edit"))
        {
            forward = EDIT;

            String CWORKID = request.getParameter("CWORKID");

            cafeworker cw = cwdao.getById(CWORKID);
            request.setAttribute("cw", cw);
            cwdao.updateCafeworker(cw);
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        cafeworker cw = new cafeworker();

        cw.setCWORKSTALLNAME(request.getParameter("CWORKSTALLNAME"));
        cw.setCWORKPHONENO(request.getParameter("CWORKPHONENO"));
        cw.setCWORKEMAIL(request.getParameter("CWORKEMAIL"));
        cw.setCWORKPASSWORD(request.getParameter("CWORKPASSWORD"));
        cw.setCWORKACCNUM(request.getParameter("CWORKACCNUM"));
        cw.setCWORKACCNAME(request.getParameter("CWORKACCNAME"));
        cw.setCWORKBANKNAME(request.getParameter("CWORKBANKNAME"));

        HttpSession session = request.getSession(true);

        session.setAttribute("CWORKID", cw.getCWORKID());
        session.setAttribute("CWORKSTALLNAME", cw.getCWORKSTALLNAME());
        session.setAttribute("CWORKPHONENO", cw.getCWORKPHONENO());
        session.setAttribute("CWORKEMAIL", cw.getCWORKEMAIL());
        session.setAttribute("CWORKPASSWORD", cw.getCWORKPASSWORD());
        session.setAttribute("CWORKACCNUM", cw.getCWORKACCNUM());
        session.setAttribute("CWORKACCNAME", cw.getCWORKACCNAME());
        session.setAttribute("CWORKBANKNAME", cw.getCWORKBANKNAME());

        cw.setCWORKID(request.getParameter("CWORKID"));
        cwdao.updateCafeworker(cw);

        PrintWriter out = response.getWriter();
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Data updated successfully!');");
        out.println("location='cafeworkerProfile.jsp';");
        out.println("</script>");
    }
}
