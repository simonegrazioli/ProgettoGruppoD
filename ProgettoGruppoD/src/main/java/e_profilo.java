import Database.DatabaseManager;
import Models.Utenti;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.ResultSet;
import java.io.IOException;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "e_profilo", urlPatterns = {"/e_profilo"})
public class e_profilo extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession sessione = request.getSession();
            String user = (String)sessione.getAttribute("nome_u");
            if(user.isEmpty()){
                request.getServletContext().getRequestDispatcher("/WEB-INF/Benvenuto.jsp").forward(request, response);
            }
            Utenti u = null;
            Connection conn = DatabaseManager.generaIstanza().connetti();
            Statement query = conn.createStatement();
            ResultSet q = query.executeQuery("SELECT * FROM utenti WHERE username='" + user + "'");
            while(q.next()){
                u = new Utenti(q.getString("username"), q.getString("psw"), q.getString("mail"), Integer.parseInt(q.getString("eta")), q.getString("sesso"));
            }

            request.setAttribute("u", u);
            request.getServletContext().getRequestDispatcher("/WEB-INF/Profilo.jsp").forward(request, response);

        } catch (Exception errore) {
            request.setAttribute("messaggio", errore);
            request.getServletContext().getRequestDispatcher("/WEB-INF/Benvenuto.jsp").forward(request, response);
            }
        
    }
}
