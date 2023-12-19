package servlets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBUtils {

    public static UserAccount findUser(Connection conn, String username, String password) throws SQLException {
        // String sql ="Select a.Username, a.Password, a.Gender from user_account a" + "where a.Username = ? and a.Password";
        String sql = "SELECT a.Username, a.Password, a.Phone FROM useraccount a WHERE a.Username = ? AND a.Password = ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, username);
        pstm.setString(2, password);
        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            String phone = rs.getString("Phone");
            UserAccount user = new UserAccount();
            user.setUsername(username);
            user.setPhone(phone);
            user.setPassword(password);
            return user;
        }
        return null;

    }

    public static UserAccount findUser(Connection conn, String username) throws SQLException {
        String sql = "Select a.Username, a.Password, a.Phone from useraccount a" + "where a.Username = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, username);
        ResultSet rs = pstm.executeQuery();
        if (rs.next()) {
            String password = rs.getString("Password");
            String phone = rs.getString("Phone");
            UserAccount user = new UserAccount();
            user.setUsername(username);
            user.setPhone(phone);
            user.setPassword(password);
            return user;
        }
        return null;
    }

    public static void insertUserAccount(Connection conn, UserAccount user) throws SQLException {
        String sql = "insert into useraccount(Username, Phone, Password) values(?,?,?)";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, user.getUsername());
        pstm.setString(2, user.getPhone());
        pstm.setString(3, user.getPassword());
        pstm.executeUpdate();
    }

    public static boolean isUsernameTaken(Connection conn, String username) throws SQLException {
        String sql = "SELECT COUNT(*) FROM useraccount WHERE Username = ?";
        try (PreparedStatement pstm = conn.prepareStatement(sql)) {
            pstm.setString(1, username);
            try (ResultSet rs = pstm.executeQuery()) {
                if (rs.next()) {
                    int count = rs.getInt(1);
                    return count > 0;
                }
            }
        }
        return false;
    }
}