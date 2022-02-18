package emfos;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

import emfos.student;

@WebServlet(name = "studentDeleteProfileServlet", value = "/studentDeleteProfileServlet")
public class studentDeleteProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String DELETE = "studentProfile.jsp";
    private studentDAO stdao;

    public studentDeleteProfileServlet() {
        super();

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("Action").equals("Delete Supplier")){
            System.out.println("in");
            PrintWriter out = response.getWriter();
            student st = new student();
            studentDAO stdao = new studentDAO();

            String STUDENTID = request.getParameter("STUDENTID");

            boolean result = stdao.deleteSupplier(STUDENTID);
            System.out.println(result);

            if(result == true){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Data deleted successfully!');");
                out.println("location='studentRegister.jsp';");
                out.println("</script>");
            } else  {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Data unsuccessfully deleted. Please try again.');");
                out.println("location='studentProfile.jsp';");
                out.println("</script>");
            }

        }
    }
}
