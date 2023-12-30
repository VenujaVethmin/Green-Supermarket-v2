package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconn {

    private Connection connection;

    public Connection getConnection() {
        return connection;
    }

    public void openConnection() throws SQLException {
        try {
            String url = "jdbc:postgresql://db.pujlipkeuabbrkutqlkl.supabase.co:5432/postgres";
            String username = "your_supabase_username";
            String password = "your_supabase_password";

            Class.forName("org.postgresql.Driver");

            connection = DriverManager.getConnection(url, username, password);
            System.out.println("Database connected");
        } catch (ClassNotFoundException e) {
            System.out.println("PostgreSQL JDBC driver not found: " + e.getMessage());
            // Handle or rethrow the exception based on your application's requirements
            throw new SQLException("Database connection error", e);
        } catch (SQLException e) {
            System.out.println("Error connecting to the database: " + e.getMessage());
            // Handle or rethrow the exception based on your application's requirements
            throw e;
        }
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
