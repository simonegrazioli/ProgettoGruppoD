import Database.DatabaseManager;
import Models.Utenti;
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

@WebServlet(name = "e_profilo", urlPatterns = {"/e_profilo"})
public class e_profilo extends HttpServlet {
    
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
            ResultSet q = query.executeQuery("SELECT * FROM utenti WHERE username='" + user + "'");
            Utenti u = new Utenti();
            ArrayList<Utenti> lista = new ArrayList<>();
            while(q.next()){
                u = new Utenti(q.getString("username"),q.getString("psw"),q.getString("mail"),Integer.parseInt(q.getString("eta")),q.getString("sesso"));
                lista.add(u);
            }

            request.setAttribute("u", lista);
            request.getServletContext().getRequestDispatcher("/WEB-INF/Profilo.jsp").forward(request, response);

        } catch (Exception errore) {
            request.getServletContext().getRequestDispatcher("/WEB-INF/Benvenuto.jsp").forward(request, response);
            }
        
    }
}
