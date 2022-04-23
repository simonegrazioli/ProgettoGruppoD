import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Database.DatabaseManager;
import Models.Piatto;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@WebServlet(name = "r_prenotazioni", urlPatterns = {"/r_prenotazioni"})
public class r_prenotazioni extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            Connection connessione = DatabaseManager.generaIstanza().connetti();
            Statement query = connessione.createStatement();
            ArrayList<Piatto> lista = new ArrayList<>();
            ResultSet risultato = query.executeQuery("SELECT * FROM piatti");
            while(risultato.next()){
                Piatto p = new Piatto(Integer.parseInt(risultato.getString("id_piatto")), risultato.getString("nome_piatto"), Integer.parseInt(risultato.getString("numero_persone")), Double.parseDouble(risultato.getString("prezzo_piatto")), Integer.parseInt(risultato.getString("fk_menu")));
                lista.add(p);
            }
            String user=request.getParameter("nome_u");
            
            request.setAttribute("messaggio", request.getAttribute("messaggio"));
            request.setAttribute("ut",user);
            request.setAttribute("listaPiatti", lista);
            request.getServletContext().getRequestDispatcher("/WEB-INF/Prenotazioni.jsp").forward(request, response);
            connessione.close();
        }
        catch(Exception errore){
            request.setAttribute("messaggio", errore);
            request.getServletContext().getRequestDispatcher("/WEB-INF/Prenotazioni.jsp").forward(request, response);
        }
        
    }
    
    
}