import Database.DatabaseManager;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
            String user = request.getParameter("user");
            String password = request.getParameter("psw");
            
            System.out.println(user);
            System.out.println(password);

            if (user.isEmpty() || password.isEmpty()) 
            {
                    request.setAttribute("messaggio", "Hai inserito dei dati errati, riprova.");
                    request.setAttribute("coloreMessaggio", "red");
                    request.getServletContext().getRequestDispatcher("/Accedi.jsp").forward(request, response);
                    return;
            }
            
            Connection conn = DatabaseManager.generaIstanza().connetti();
            Statement query = conn.createStatement();
            
            ResultSet query_controlla = query.executeQuery("SELECT COUNT(*) AS 'conta' FROM utenti WHERE username = '" + user + "' AND psw = '" + password + "'");
            int i=0;
            while(query_controlla.next()){
                i=Integer.parseInt(query_controlla.getString("conta"));
            }
            if(i==1){
                Statement query2 = conn.createStatement();
                ResultSet query_acc=query2.executeQuery("SELECT username,psw FROM utenti WHERE username='"+user+"'");
                ArrayList<String> lista_u = new ArrayList<>();
                ArrayList<String> lista_p = new ArrayList<>();
                while(query_acc.next()){
                    lista_u.add(query_acc.getString("username"));
                    lista_p.add(query_acc.getString("psw"));
                }
                request.getServletContext().getRequestDispatcher("/WEB-INF/Benvenuto.jsp").forward(request, response);
                return;
            }
            else
            {
                request.getServletContext().getRequestDispatcher("/Accedi.jsp").forward(request, response);
            }

            conn.close();
        } catch (Exception errore) {
            //request.setAttribute("messaggio", errore);
            //request.setAttribute("coloreMessaggio", "red");
            request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }
        
    }
}
