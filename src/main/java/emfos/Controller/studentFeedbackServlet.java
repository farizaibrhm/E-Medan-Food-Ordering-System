package emfos.Controller;

import emfos.DAO.feedbackDAO;
import emfos.Model.feedback;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "studentFeedbackServlet", value = "/studentFeedbackServlet")
public class studentFeedbackServlet extends HttpServlet {

    public studentFeedbackServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("Action").equals("Send Feedback")) {
            System.out.println("in");
            PrintWriter out = response.getWriter();

            feedback f = new feedback();
            feedbackDAO fdao = new feedbackDAO();

            HttpSession session = request.getSession();

            try{
                if ((String) session.getAttribute("STUDENTNAME") == null){
                    response.sendRedirect("studentLogin.jsp");
                }else {
                    int oid= Integer.parseInt(request.getParameter("oid"));
                    String msg = request.getParameter("FEEDBACKMESSAGE");

                    f.setORDERID(oid);
                    f.setFEEDBACKMESSAGE(msg);

                        boolean result = fdao.sendFeedback(f);
                        System.out.println(result);

                        if (result == true) {

                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Feedback is successfully submitted!');");
                            out.println("location='studentFeedbackList.jsp';");
                            out.println("</script>");
                        } else {
                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Feedback is unsuccessfully submitted. Please try again.');");
                            out.println("location='studentFeedbackList.jsp';");
                            out.println("</script>");
                        }
                }
            }catch (Exception e) {
                e.printStackTrace();
            }

        }

    }
}
