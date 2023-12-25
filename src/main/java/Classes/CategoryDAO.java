package Classes;

import Database.Dbconn;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {

    private static final String GET_ALL_CATEGORIES_QUERY = "SELECT id, name FROM category";

    public List<Category> getAllCategories() {
        List<Category> categories = new ArrayList<>();
        Dbconn dbconn = new Dbconn();

        try {
            dbconn.openConnection();

            // Execute the query for categories
            try (PreparedStatement preparedStatement = dbconn.getConnection().prepareStatement(GET_ALL_CATEGORIES_QUERY);
                 ResultSet resultSet = preparedStatement.executeQuery()) {

                // Process the results for categories
                while (resultSet.next()) {
                    int categoryId = resultSet.getInt("id");
                    String categoryName = resultSet.getString("name");

                    // Create a Category object and add it to the list
                    Category category = new Category(categoryId, categoryName);
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
