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

@WebServlet(name = "r_menu", urlPatterns = {"/r_menu"})
public class r_menu extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            Connection connessione = DatabaseManager.generaIstanza().connetti();
            Statement query = connessione.createStatement();
            ArrayList<Piatto> lista = new ArrayList<>();
            ResultSet risultato = query.executeQuery("SELECT * FROM piatti");
            while(risultato.next()){
                Piatto p = new Piatto(risultato.getString("nome_piatto"), Integer.parseInt(risultato.getString("numero_persone")), Double.parseDouble(risultato.getString("prezzo_piatto")), Integer.parseInt(risultato.getString("fk_menu")));
                lista.add(p);
            }
            String user=request.getParameter("nome_u");
            request.setAttribute("ut",user);
            request.setAttribute("listaPiatti", lista);
            request.getServletContext().getRequestDispatcher("/WEB-INF/Menu.jsp").forward(request, response);
        }
        catch(Exception errore){
            request.setAttribute("messaggio", errore);
            request.getServletContext().getRequestDispatcher("/WEB-INF/Menu.jsp").forward(request, response);
        }
        
    }
    
    
}