package Classes;

import Database.Dbconn;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LatestProducts {

    public List<Product> getProducts() {
        Dbconn dbconn = new Dbconn();
        List<Product> products = new ArrayList<>();

        try {
            dbconn.openConnection();

            // Execute a query
            String sqlQuery = "SELECT * FROM products";
            try (PreparedStatement preparedStatement = dbconn.getConnection().prepareStatement(sqlQuery);
                 ResultSet resultSet = preparedStatement.executeQuery()) {

                // Process the results
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String name = resultSet.getString("name");
                    String description = resultSet.getString("description");
                    double price = resultSet.getDouble("price");
                    String image = resultSet.getString("image");
                    int quantity = resultSet.getInt("quantity");

                    System.out.println(id);

                    // Create a Product object and add it to the list
                    Product product = new Product(id, name, description, price, image, quantity);
                    products.add(product);
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            // Close the database connection
            dbconn.closeConnection();
        }

        return products;
    }
}
