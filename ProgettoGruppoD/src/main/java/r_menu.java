import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "r_menu", urlPatterns = {"/r_menu"})
public class r_menu extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            request.getServletContext().getRequestDispatcher("/WEB-INF/Menu.jsp").forward(request, response);
        }
        catch(IOException e){
            request.getServletContext().getRequestDispatcher("/WEB-INF/Benvenuto.jsp").forward(request, response);
        }
        
    }
    
    
}