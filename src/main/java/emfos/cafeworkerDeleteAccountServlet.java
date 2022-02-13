package emfos;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "cafeworkerDeleteAccountServlet", value = "/cafeworkerDeleteAccountServlet")
public class cafeworkerDeleteAccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final cafeworkerDAO dao;

    public cafeworkerDeleteAccountServlet() {
        super();
        dao = new cafeworkerDAO();
        // TODO Auto-generated constructor stub
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub //same like view

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub //same like view

//
//            System.out.println("in");
//            PrintWriter out = response.getWriter();
//
//            cafeworker cw = new cafeworker();
//            cafeworkerDAO cwdao = new cafeworkerDAO();
//
//            String CWORKID = request.getParameter("CWORKID");
//            int cid = Integer.parseInt(CWORKID);
//
//            boolean result = cwdao.deleteCafeWorkerAccount(CWORKID);
//            System.out.println(result);
//
//            if (result == true) {
//                out.println("<script type=\"text/javascript\">");
//                out.println("alert('Data deleted successfully!');");
//                out.println("location='cafeworkerLogin.jsp';");
//                out.println("</script>");
//
//            } else {
//                out.println("<script type=\"text/javascript\">");
//                out.println("alert('Data unsuccessfully deleted. Please try again.');");
//                out.println("location='cafeworkerProfile.jsp';");
//                out.println("</script>");
//            }
//

////        // TODO Auto-generated method stub
//        String CWORKID = request.getParameter("CWORKID");
//        dao.deleteCafeWorkerAccount(CWORKID);
//        PrintWriter out = response.getWriter();
//        out.println("<script type=\"text/javascript\">");
//        out.println("alert('Account deleted successfully!');");
//        out.println("location='cafeworkerLogin.jsp';");
//        out.println("</script>");

        String CWORKID = request.getParameter("CWORKID");
        dao.deleteCafeWorkerAccount(CWORKID);
        request.setAttribute("cw", cafeworkerDAO.getAllCafeWorkers());
        RequestDispatcher view = request.getRequestDispatcher("listPending.jsp");
        view.forward(request, response);
//    }


    }
}
