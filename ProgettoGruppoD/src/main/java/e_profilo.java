import Database.DatabaseManager;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "e_profilo", urlPatterns = {"/e_profilo"})
public class e_profilo extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String user = request.getParameter("nome_u");
            if(user.equals("simone"))
            {
                request.getServletContext().getRequestDispatcher("/WEB-INF/Benvenuto.jsp").forward(request, response);
            }
            
        } catch (Exception errore) {
            request.setAttribute("messaggio", "C'è stato un errore nell'accesso");
            request.setAttribute("coloreMessaggio", "red");
            request.getServletContext().getRequestDispatcher("/Accedi.jsp").forward(request, response);
        }
        
    }
}
