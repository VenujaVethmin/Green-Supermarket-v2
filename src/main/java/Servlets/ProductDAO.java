package Servlets;

import Database.Dbconn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Classes.Product;

public class ProductDAO {
    private final Dbconn dbconn = new Dbconn();

    private static final String SELECT_ALL_PRODUCTS = "SELECT * FROM products";
    private static final String SELECT_PRODUCTS_BY_CATEGORY = "SELECT * FROM products WHERE category = ?";

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();

        try {
            dbconn.openConnection();
            Connection connection = dbconn.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCTS);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                String category = rs.getString("category");

                Product product = new Product(id, name, category, price, category, id, category);
                products.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbconn.closeConnection();
        }
        return products;
    }

    public List<Product> getProductsByCategory(String category) {
        List<Product> products = new ArrayList<>();

        try {
            dbconn.openConnection();
            Connection connection = dbconn.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCTS_BY_CATEGORY);

            preparedStatement.setString(1, category);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                String productCategory = rs.getString("category");

                Product product = new Product(id, name,productCategory, price,category, id, productCategory);
                products.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbconn.closeConnection();
        }
        return products;
    }
}


