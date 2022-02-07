package emfos.Controller;

import emfos.DAO.studentDAO;
import emfos.Model.student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "studentUpdateProfileServlet", value = "/studentUpdateProfileServlet")
public class studentUpdateProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String EDIT = "studentProfile.jsp";
    private studentDAO stdao;

    public studentUpdateProfileServlet() {
        super();
        stdao = new studentDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("edit"))
        {
            forward = EDIT;

            String STUDENTID = request.getParameter("STUDENTID");

            student st = stdao.getById(STUDENTID);
            request.setAttribute("st", st);
            stdao.updateStudent(st);
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        student st = new student();

        st.setSTUDENTNAME(request.getParameter("STUDENTNAME"));
        st.setSTUDENTPHONENO(request.getParameter("STUDENTPHONENO"));
        st.setSTUDENTEMAIL(request.getParameter("STUDENTEMAIL"));
        st.setSTUDENTPASSWORD(request.getParameter("STUDENTPASSWORD"));

        HttpSession session = request.getSession(true);

        session.setAttribute("STUDENTID", st.getSTUDENTID());
        session.setAttribute("STUDENTNAME", st.getSTUDENTNAME());
        session.setAttribute("STUDENTPHONENO", st.getSTUDENTPHONENO());
        session.setAttribute("STUDENTEMAIL", st.getSTUDENTEMAIL());
        session.setAttribute("STUDENTPASSWORD", st.getSTUDENTPASSWORD());

        st.setSTUDENTID(request.getParameter("STUDENTID"));
        stdao.updateStudent(st);

        PrintWriter out = response.getWriter();
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Data updated successfully!');");
        out.println("location='studentProfile.jsp';");
        out.println("</script>");

    }
}
