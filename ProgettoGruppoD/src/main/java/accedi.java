import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "accedi", urlPatterns = {"/accedi"})
public class accedi extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String utente=request.getParameter("nome_utente");
        request.setAttribute("user", utente);
        request.getServletContext().getRequestDispatcher("/Benvenuto.jsp").forward(request, response);
    }


}
