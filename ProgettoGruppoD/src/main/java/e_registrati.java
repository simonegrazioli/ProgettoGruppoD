import java.io.IOException;
import java.io.PrintWriter;
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
        String utente = request.getParameter("nome_utente");
        String password = request.getParameter("psw");
        String mail = request.getParameter("mail");
        String s_eta = request.getParameter("eta"); 
        int eta = Integer.parseInt(s_eta);
        String sesso = request.getParameter("sesso");
        request.setAttribute("nome_utente", utente);
        request.getServletContext().getRequestDispatcher("/Benvenuto.jsp").forward(request, response);
        if (utente.isEmpty() || password.isEmpty() || mail.isEmpty() || sesso.isEmpty()) {
                request.setAttribute("messaggio", "Hai inserito dei dati errati, riprova.");
                request.setAttribute("coloreMessaggio", "orange");

                // Inoltro la richiesta
                request.getServletContext().getRequestDispatcher("/inserisci.jsp").forward(request, response);
                return;
            }
    }
    
    
}
