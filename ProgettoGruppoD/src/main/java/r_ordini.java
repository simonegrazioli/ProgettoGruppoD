import Models.Ordini;
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

@WebServlet(name = "r_ordini", urlPatterns = {"/r_ordini"})
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
            
            ResultSet q = query.executeQuery("SELECT dataa,indirizzo_consegna,nome_piatto,quantita,COUNT(prezzo_piatto) AS 'costo_ordine' FROM ordini JOIN piatti ON id_piatto=fk_piatto WHERE fk_utente IN (SELECT id_utente FROM utenti WHERE username='"+user+"'");
            Ordini o= new Ordini();
            ArrayList<Ordini> lista = new ArrayList<>();
            while(q.next()){
                o = new Ordini(q.getString("dataa"),q.getString("indirizzo_consegna"),q.getString("nome_piatto"),Integer.parseInt(q.getString("quantita")),Double.parseDouble(q.getString("costo_ordine")));
                lista.add(o);
            }
            
            request.setAttribute("listaOrdini", lista);
            request.getServletContext().getRequestDispatcher("/WEB-INF/Ordini.jsp").forward(request, response);

        } catch (Exception errore) {
            request.getServletContext().getRequestDispatcher("/WEB-INF/Benvenuto.jsp").forward(request, response);
        }
    }
}