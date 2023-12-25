package Classes;

import Database.Dbconn;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerLogin {

    public boolean validate(String email, String password) {
        String sql = "SELECT email, password, username FROM customer WHERE email=? AND password=?";
        Dbconn dbconn = new Dbconn();

        try {
            dbconn.openConnection();

            try (PreparedStatement preparedStatement = dbconn.getConnection().prepareStatement(sql)) {
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, password);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    return resultSet.next();
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            // Log the exception or display a user-friendly error message
            e.printStackTrace();
        } finally {
            dbconn.closeConnection();
        }

        return false;
    }
}
