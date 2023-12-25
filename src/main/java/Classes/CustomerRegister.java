package Classes;

import Database.Dbconn;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CustomerRegister {

    public void insertUser(String username, String email, String password) throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO customer (username, email, password) VALUES (?, ?, ?)";
        Dbconn dbconn = new Dbconn();
        try {
            dbconn.openConnection();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {

            System.out.println(e.getMessage());
        }

        try (


                PreparedStatement preparedStatement = dbconn.getConnection().prepareStatement(sql)
        ) {
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password);

            preparedStatement.executeUpdate();
            System.out.println("User inserted successfully!");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
    }
}
