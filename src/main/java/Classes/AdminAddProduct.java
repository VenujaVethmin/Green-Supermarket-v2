package Classes;

import Database.Dbconn;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AdminAddProduct {

    public void insertProduct(String name, int quantity, String description, float price, String category)
            throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO products (name, quantity, description, price, category) VALUES (?, ?, ?, ?, ?)";
        Dbconn dbconn = new Dbconn();

        try {
            dbconn.openConnection();

            try (PreparedStatement preparedStatement = dbconn.getConnection().prepareStatement(sql)) {
                preparedStatement.setString(1, name);
                preparedStatement.setInt(2, quantity);
                preparedStatement.setString(3, description);
                preparedStatement.setFloat(4, price);
                preparedStatement.setString(5, category);

                preparedStatement.executeUpdate();
                System.out.println("Item inserted successfully!");
            }
        } catch (SQLException e) {
            // Handle SQLException appropriately, log or rethrow
            throw new RuntimeException("Error inserting product into the database", e);
        } finally {
            try {
                dbconn.closeConnection();
            } catch (Exception e) {
                // Handle closing connection error, log or rethrow
                System.out.println(e.getMessage());
            }
        }
    }
}
