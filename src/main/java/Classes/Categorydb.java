package Classes;
import Database.Dbconn;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class Categorydb {
    public List<Category> getCategory() {
        Dbconn dbconn = new Dbconn();
        List<Category> categories = new ArrayList<>();

        try {
            dbconn.openConnection();

            // Execute a query
            String sqlQuery = "SELECT * FROM category";
            try (PreparedStatement preparedStatement = dbconn.getConnection().prepareStatement(sqlQuery);
                 ResultSet resultSet = preparedStatement.executeQuery()) {

                // Process the results
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String name = resultSet.getString("name");


                    String image = resultSet.getString("image");


                    System.out.println(name);

                    // Create a Product object and add it to the list
                    Category category = new Category(id, name, image);
                    categories.add(category);

                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            // Close the database connection
            dbconn.closeConnection();
        }

        return categories;
    }
}
