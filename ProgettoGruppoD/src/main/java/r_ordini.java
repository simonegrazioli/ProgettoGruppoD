import Database.DatabaseManager;
import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet(name = "r_ordine", urlPatterns = {"/r_ordine"})
public class r_ordini extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String user = request.getParameter("nome_u");
            if(!user.isEmpty()){
                request.getServletContext().getRequestDispatcher("/WEB-INF/Benvenuto.jsp").forward(request, response);
                return;
            }
            Connection conn = DatabaseManager.generaIstanza().connetti();
            Statement query = conn.createStatement();
            ResultSet q = query.executeQuery("SELECT * FROM ordini WHERE fk_utente= (select id_utente from utenti where username='" + user + "')");
            Ordini u = new Ordini();
            while(q.next()){
                u = new Ordini();
            }

            request.setAttribute("utente", u);
            request.getServletContext().getRequestDispatcher("/WEB-INF/Profilo.jsp").forward(request, response);

        } catch (Exception errore) {
            request.getServletContext().getRequestDispatcher("/WEB-INF/Benvenuto.jsp").forward(request, response);
        }
    }
}