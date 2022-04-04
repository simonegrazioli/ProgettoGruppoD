import Database.DatabaseManager;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "e_accedi", urlPatterns = {"/e_accedi"})
public class e_accedi extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String user_mail = request.getParameter("user_mail");
            String password = request.getParameter("psw");

            if (user_mail.isEmpty() || password.isEmpty()) 
            {
                    request.setAttribute("messaggio", "Hai inserito dei dati errati, riprova.");
                    request.setAttribute("coloreMessaggio", "red");
                    request.getServletContext().getRequestDispatcher("/Accedi.jsp").forward(request, response);
                    return;
            }
            
            Connection conn = DatabaseManager.generaIstanza().connetti();
            Statement query = conn.createStatement();
            
            ResultSet query_controlla=query.executeQuery("select username,psw from utenti where username="+user_mail+"");
            boolean c=false;
            if(password.equals(query_controlla.getString("psw"))){
                    c=true;
            }
            
            if(c){
                request.getServletContext().getRequestDispatcher("/WEB-INF/Benvenuto.jsp").forward(request, response);
            }
            else{
                request.getServletContext().getRequestDispatcher("/Accedi.jsp").forward(request, response);
            }
            
            
            
            conn.close();
        } catch (Exception errore) {
            request.setAttribute("messaggio", "Accesso no effettuato");
            request.setAttribute("coloreMessaggio", "red");
            request.getServletContext().getRequestDispatcher("/Accedi.jsp").forward(request, response);
        }
        
    }


}
