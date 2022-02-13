package emfos;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/cafeworkerUpdateProfileServlet")
public class cafeworkerUpdateProfileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private cafeworkerDAO cwdao;

    public cafeworkerUpdateProfileServlet() {
        super();
        cwdao = new cafeworkerDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub //same like view


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub // same like add

        System.out.println("in");
        PrintWriter out = response.getWriter();

        cafeworker cw = new cafeworker();
        cafeworkerDAO cwdao = new cafeworkerDAO();

        String CWORKID = request.getParameter("CWORKID");

        cw.setCWORKID(CWORKID);
        cw.setCWORKSTALLNAME(request.getParameter("CWORKSTALLNAME"));
        cw.setCWORKPHONENO(request.getParameter("CWORKPHONENO"));
        cw.setCWORKEMAIL(request.getParameter("CWORKEMAIL"));
        cw.setCWORKPASSWORD(request.getParameter("CWORKPASSWORD"));
        cw.setCWORKACCNUM(request.getParameter("CWORKACCNUM"));
        cw.setCWORKACCNAME(request.getParameter("CWORKACCNAME"));
        cw.setCWORKBANKNAME(request.getParameter("CWORKBANKNAME"));

        request.setAttribute("cw", cw);
        cwdao.updateCafeWorker(cw);

        out.println("<script type=\"text/javascript\">");
        out.println("alert('Data updated successfully!');");
        out.println("location='cafeworkerProfile.jsp';");
        out.println("</script>");


    }

}
