package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconn {


    private Connection connection;  // Declare the Connection as a member variable

    public Connection getConnection() {
        return connection;
    }




    public void openConnection() throws ClassNotFoundException, SQLException {
        String url = "jdbc:postgresql://db.pujlipkeuabbrkutqlkl.supabase.co:5432/postgres";
        String username = "postgres";
        String password = "Venujavethmin";
        Class.forName("org.postgresql.Driver");
        System.out.println("Database class logged");

        connection = DriverManager.getConnection(url, username, password);
        System.out.println("Database connected");
    }

    public void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
                System.out.println("Database connection closed");
            } catch (SQLException e) {
                System.out.println("Error closing database connection: " + e.getMessage());
            }
        }
    }


}
