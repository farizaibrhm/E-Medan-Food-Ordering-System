package emfos;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

import emfos.student;
import emfos.studentDAO;

@WebServlet(name = "studentLoginServlet", value = "/studentLoginServlet")
public class studentLoginServlet extends HttpServlet {
    public studentLoginServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        studentDAO stdao = new studentDAO();
        student st = new student();

        st.setSTUDENTID(request.getParameter("STUDENTID"));
        st.setSTUDENTPASSWORD(request.getParameter("STUDENTPASSWORD"));

        if (stdao.loginStudent(st)){
            HttpSession session = request.getSession(true);

            session.setAttribute("STUDENTID", st.getSTUDENTID());
            session.setAttribute("STUDENTNAME", st.getSTUDENTNAME());
            session.setAttribute("STUDENTPHONENO", st.getSTUDENTPHONENO());
            session.setAttribute("STUDENTEMAIL", st.getSTUDENTEMAIL());
            session.setAttribute("STUDENTPASSWORD", st.getSTUDENTPASSWORD());

            session.setAttribute("currentStudent", st);
            response.sendRedirect("index.jsp");
        } else {
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('You have entered wrong credential. Please try again.');");
            out.println("location='studentLogin.jsp';");
            out.println("</script>");
        }
    }
}
