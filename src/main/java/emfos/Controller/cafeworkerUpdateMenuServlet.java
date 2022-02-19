package emfos.Controller;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.awt.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import emfos.DAO.menuDAO;
import emfos.Model.menu;

@WebServlet(name = "cafeworkerUpdateMenuServlet", value = "/cafeworkerUpdateMenuServlet")
public class cafeworkerUpdateMenuServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    public cafeworkerUpdateMenuServlet()
    {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        if (request.getParameter("Action").equals("Update Menu"))
        {

            System.out.println("in");
            PrintWriter out = response.getWriter();

            menu mn = new menu();
            menuDAO upMenu = new menuDAO();


            String id = request.getParameter("MENUID");

            if (!((id) == null))
            {
                int sid = Integer.parseInt(id);
                mn.setMENUID(sid);
            }

            mn.setMENUNAME(request.getParameter("MENUNAME"));
            mn.setMENUDESC(request.getParameter("MENUDESC"));
            mn.setMENUTPRICE(Double.parseDouble(request.getParameter("MENUTPRICE")));
            mn.setMENUTYPE(request.getParameter("MENUTYPE"));
            //mn.setCWORKID(request.getParameter("CWORKID"));

            request.setAttribute("mn", mn);

            boolean result = upMenu.updateMenu(mn);
            System.out.println(result);


            if (result == true)
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Menu updated successfully!');");
                out.println("location='cafeworkerMenuList.jsp';");
                out.println("</script>");
            }
            else
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Menu unsuccessfully updated. Please try again.');");
                out.println("location='cafeworkerMenuList.jsp';");
                out.println("</script>");
            }
        }


    }
}