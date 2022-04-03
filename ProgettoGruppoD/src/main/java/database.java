import java.sql.*;
public class database {
    private final String url = "jdbc:mysql://localhost:";
    private final int porta = 3306;
    private final String nome_DB = "/ristoranti";
    private final String user = "root";
    private final String pws = "";
    private static database dbmanager = null;
    private database(){}
    
    public Connection connetti() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        return DriverManager.getConnection(url + porta + nome_DB, user, pws);
    }
    
    public static database generaIstanza() {
        if (dbmanager == null) { dbmanager = new database(); }
        return dbmanager;
    }
}
