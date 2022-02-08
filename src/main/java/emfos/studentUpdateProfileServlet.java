package emfos;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/studentUpdateProfileServlet")
public class studentUpdateProfileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final studentDAO stdao;

    public studentUpdateProfileServlet() {
        super();
        stdao = new studentDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub //same like view
        String STUDENTID = request.getParameter("STUDENTID");
        request.setAttribute("st", studentDAO.getStudentsById(STUDENTID));
        RequestDispatcher view = request.getRequestDispatcher("studentProfile.jsp");
        view.forward(request,  response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub // same like add

        student st = new student();
        st.setSTUDENTID(request.getParameter("STUDENTID"));
        st.setSTUDENTNAME(request.getParameter("STUDENTNAME"));
        st.setSTUDENTPHONENO(request.getParameter("STUDENTPHONENO"));
        st.setSTUDENTEMAIL(request.getParameter("STUDENTEMAIL"));
        st.setSTUDENTPASSWORD(request.getParameter("STUDENTPASSWORD"));

        stdao.updateStudent(st);

        request.setAttribute("sts", studentDAO.getAllStudents());
        RequestDispatcher view = request.getRequestDispatcher("studentProfile.jsp");
        view.forward(request,  response);
    }

}
