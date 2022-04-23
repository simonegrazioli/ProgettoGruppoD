import Database.DatabaseManager;
import java.io.IOException;
import java.sql.Connection;
import java.util.Date;
import java.sql.Statement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "r_inserisci_prenotazione", urlPatterns = {"/r_inserisci_prenotazione"})
public class r_inserisci_prenotazione extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            HttpSession sessione = request.getSession();
            Date data = new Date();
            SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd");
            int idUtente = 0;
            int idPiatto = Integer.parseInt(request.getParameter("idPiatto"));
            String dove=request.getParameter("dove");
            String user=(String)sessione.getAttribute("nome_u");
            int quantita = Integer.parseInt(request.getParameter("quantita"));
            
            Connection connessione = DatabaseManager.generaIstanza().connetti();
            Statement query = connessione.createStatement();
            ResultSet risultato = query.executeQuery("SELECT id_utente FROM utenti WHERE username = '" + user + "'");
            
            while(risultato.next()){
                idUtente = Integer.parseInt(risultato.getString("id_utente"));
            }
            
            query.execute("INSERT INTO ordini (fk_utente, dataa, fk_piatto, quantita, indirizzo_consegna) VALUES (" + idUtente + ", '" + ft.format(data) + "', " + idPiatto + ", " + quantita + ", '" + dove + "')");
            
            request.setAttribute("nome_u", user);
            request.setAttribute("messaggio", "Ordine inserito");
            request.getServletContext().getRequestDispatcher("/WEB-INF/Prenotazioni.jsp").forward(request, response);
            connessione.close();
        }
        catch(Exception errore){
            request.setAttribute("messaggio", errore);
            request.getServletContext().getRequestDispatcher("/r_menu").forward(request, response);
        }
        
    }
    
    
}