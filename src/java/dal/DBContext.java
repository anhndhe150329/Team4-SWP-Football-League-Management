package dal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
    protected Connection connection;
    public DBContext()
    {
        try {
            // Edit URL , username, password to authenticate with your MS SQL Server
            String url = "jdbc:sqlserver://localhost:1433;databaseName= FootballWeb";
            String username = "sa";

<<<<<<< HEAD
            String password = "123";
=======
            String password = "bjnbeou123";
>>>>>>> 5d084aae9c96dbde606907a1b5a80aece4ba4dae


            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
    }
    public static void main(String[] args) {
        System.out.println(new DBContext().connection);
    }
    
}