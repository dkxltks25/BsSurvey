package Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDAO {

    private String dbURL ;
    private String dbId ;
    private String dbPassword ;
    private Connection conn;
    public ConnectionDAO(){
        try{
             dbURL = "jdbc:mysql://localhost:3306/Survey?serverTimezone=UTC";
             dbId = "root";
             dbPassword = "dkxltks25";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL,dbId,dbPassword);
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    public Connection GetConnection(){
        return conn;
    }
}
