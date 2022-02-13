package emfos.Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import emfos.DAO.menuDAO;
import emfos.Model.menu;

@WebServlet(name = "cafeworkerDeleteMenuServlet", value = "/cafeworkerDeleteMenuServlet")
public class cafeworkerDeleteMenuServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        if (request.getParameter("Action").equals("Delete Menu"))
        {
            System.out.println("in");
            PrintWriter out = response.getWriter();

            menu mn = new menu();
            menuDAO del = new menuDAO();

            String id = request.getParameter("id");
            int sid = Integer.parseInt(id);

            boolean result = del.deleteMenu(sid);
            System.out.println(result);

            if (result == true)
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Data deleted successfully!');");
                out.println("location='cafeworkerMenuList.jsp';");
                out.println("</script>");
            }
            else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Data unsuccessfully deleted. Please try again.');");
                out.println("location='cafeworkerMenuList.jsp';");
                out.println("</script>");
            }
        }

    }
}
