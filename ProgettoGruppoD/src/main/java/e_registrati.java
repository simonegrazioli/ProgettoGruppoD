import Database.DatabaseManager;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "e_registrati", urlPatterns = {"/e_registrati"})
public class e_registrati extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String user = request.getParameter("nome_utente");
            String password = request.getParameter("psw");
            String mail = request.getParameter("mail");
            String s_eta = request.getParameter("eta"); 
            int eta = Integer.parseInt(s_eta);
            String sesso = request.getParameter("sesso");
            if (user.isEmpty() || password.isEmpty() || mail.isEmpty() || sesso.isEmpty() || (eta<14 || eta>120)) 
            {
                    request.setAttribute("messaggio", "Hai inserito dei dati errati, riprova.");
                    request.setAttribute("coloreMessaggio", "red");
                    request.getServletContext().getRequestDispatcher("/Registrati.jsp").forward(request, response);
                    return;
            }
            
            Connection conn = DatabaseManager.generaIstanza().connetti();
            Statement query = conn.createStatement();
            
            String sql = "INSERT INTO utenti (username, psw, mail, eta, sesso)" + 
                    "VALUES('" + user + "', '" + password + "', '" + mail + "', '" + eta + "', '" + sesso +"')";
            boolean result = query.execute(sql);
            request.setAttribute("nome_u", user);
            request.getServletContext().getRequestDispatcher("/WEB-INF/Benvenuto.jsp").forward(request, response);
                
            conn.close();
        } catch (Exception errore) {
            request.setAttribute("messaggio", "Registrazione non effettuata correttamente");
            request.setAttribute("coloreMessaggio", "red");
            request.getServletContext().getRequestDispatcher("/Registrati.jsp").forward(request, response);
        }
    }
    
    
}
