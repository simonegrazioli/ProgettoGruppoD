package Database;

import java.sql.*;

/*
    TUTORIAL MySQL:
    - Scaricare dal sito il driver connector
    - Copiare il jar dentro alla cartella /lib sotto WEB-INF
    - Aggiungere la dipendenza nella cartella Dependencies:
        - Group ID: mysql
        - Artifact ID: mysql-connector-java
        - Version: 8.0.28 (o quella scaricata)
        - Scope: compile
    - Tasto destro sulla dipendenza appena aggiunta e fare "Manually install artifact"
    - Scegliere il file mysql-connector-java.jar dalla cartella scaricata
    - Fare Clean & Build Project
    - Run Project
*/

public class DatabaseManager {
    private final String db_url = "jdbc:mysql://localhost:";
    private final int db_port = 3306;
    private final String db_name = "/ristoranti";
    private final String user = "root";
    private final String pwd = "";
    private static DatabaseManager dbManager = null;
    
    private DatabaseManager() {}
    
    public static DatabaseManager generaIstanza() {
        if (dbManager == null) { dbManager = new DatabaseManager(); }
        
        return dbManager;
    }
    
    public Connection connetti() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver"); 
            
        return DriverManager.getConnection(db_url + db_port + db_name, user, pwd);
    }
    
}
