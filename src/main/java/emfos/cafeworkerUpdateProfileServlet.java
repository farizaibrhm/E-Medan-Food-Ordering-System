package emfos;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/cafeworkerUpdateProfileServlet")
public class cafeworkerUpdateProfileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final cafeworkerDAO cwdao;

    public cafeworkerUpdateProfileServlet() {
        super();
        cwdao = new cafeworkerDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub //same like view
        String CWORKID = request.getParameter("CWORKID");
        request.setAttribute("cw", cafeworkerDAO.getCafeWorkersById(CWORKID));
        RequestDispatcher view = request.getRequestDispatcher("cafeworkerProfile.jsp");
        view.forward(request,  response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub // same like add

        cafeworker cw = new cafeworker();
        cw.setCWORKID(request.getParameter("CWORKID"));
        cw.setCWORKSTALLNAME(request.getParameter("CWORKSTALLNAME"));
        cw.setCWORKPHONENO(request.getParameter("CWORKPHONENO"));
        cw.setCWORKEMAIL(request.getParameter("CWORKEMAIL"));
        cw.setCWORKPASSWORD(request.getParameter("CWORKPASSWORD"));
        cw.setCWORKACCNUM(request.getParameter("CWORKACCNUM"));
        cw.setCWORKACCNAME(request.getParameter("CWORKACCNAME"));
        cw.setCWORKBANKNAME(request.getParameter("CWORKBANKNAME"));

        cwdao.updateCafeWorker(cw);

        request.setAttribute("cws", cafeworkerDAO.getAllCafeWorkers());
        RequestDispatcher view = request.getRequestDispatcher("cafeworkerProfile.jsp");
        view.forward(request,  response);
    }

}
