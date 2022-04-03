import Database.DatabaseManager;
import Models.Utenti;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
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
            ResultSet query_controlla=query.executeQuery("select * from utenti");
            boolean c=false;
            while(query_controlla.next()){
                String us = query_controlla.getString("username");
                String p = query_controlla.getString("psw");
                String m = query_controlla.getString("mail");
                String s = query_controlla.getString("sesso");
                int e = Integer.parseInt(query_controlla.getString("eta"));
                if(user==us || mail==m){
                    c=true;
                }
            }
            
            if(!c){
                String sql = "INSERT INTO persone (username, psw, mail, eta, sesso)" + 
                    "VALUES('" + user + "', '" + password + "', '" + mail + "', '" + eta + "', '" + sesso +"')";
                boolean result = query.execute(sql);
                request.getServletContext().getRequestDispatcher("/Benvenuto.jsp").forward(request, response);
            }
            else
            {
                request.getServletContext().getRequestDispatcher("/Registrati.jsp").forward(request, response);
            }
            
            
            
            conn.close();
        } catch (Exception errore) {
            request.setAttribute("messaggio", "Si è verificato un errore, contattare l'amministratore.");
            request.setAttribute("coloreMessaggio", "red");
            request.getServletContext().getRequestDispatcher("/Registrati.jsp").forward(request, response);
        }
    }
    
    
}
