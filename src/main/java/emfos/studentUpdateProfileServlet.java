package emfos;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/studentUpdateProfileServlet")
public class studentUpdateProfileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final studentDAO stdao;

    public studentUpdateProfileServlet() {
        super();
        stdao = new studentDAO();
    }

    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // TODO Auto-generated method stub //same like view
//        String STUDENTID = request.getParameter("STUDENTID");
//        request.setAttribute("st", studentDAO.getStudentsById(STUDENTID));
//        RequestDispatcher view = request.getRequestDispatcher("studentProfile.jsp");
//        view.forward(request,  response);
//    }

//    /**
//     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub // same like add

        System.out.println("in");
        PrintWriter out = response.getWriter();

        student st = new student();
        studentDAO stdao = new studentDAO();

        String STUDENTID = request.getParameter("STUDENTID");

        st.setSTUDENTID(STUDENTID);
        st.setSTUDENTNAME(request.getParameter("STUDENTNAME"));
        st.setSTUDENTPHONENO(request.getParameter("STUDENTPHONENO"));
        st.setSTUDENTEMAIL(request.getParameter("STUDENTEMAIL"));
        st.setSTUDENTPASSWORD(request.getParameter("STUDENTPASSWORD"));

        request.setAttribute("st", st);
        stdao.updateStudent(st);

        out.println("<script type=\"text/javascript\">");
        out.println("alert('Data updated successfully!');");
        out.println("location='studentProfile.jsp';");
        out.println("</script>");
    }

}
