package emfos;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "cafeworkerUpdateMenuServlet", value = "/cafeworkerUpdateMenuServlet")
public class cafeworkerUpdateMenuServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String EDIT = "/cafeworkerUpdateMenu.jsp";
    private menuDAO menu;

    public cafeworkerUpdateMenuServlet() {
        super();
        menu = new menuDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("Action").equals("Update Menu")) {
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
            mn.setMENUTPRICE(Double.parseDouble(request.getParameter("MENUPRICE")));
            mn.setMENUTYPE(request.getParameter("MENUTYPE"));

            request.setAttribute("mn", mn);

            boolean result = upMenu.updateMenu(mn);
            System.out.println(result);

            if (result == true){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Menu updated successfully!');");
                out.println("location='cafeworkerMenuList.jsp';");
                out.println("</script>");
            }else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Menu unsuccessfully updated. Please try again.');");
                out.println("location='cafeworkerMenuList.jsp';");
                out.println("</script>");
            }
        }


    }
}
