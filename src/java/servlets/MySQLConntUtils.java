package servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConntUtils {

    public static Connection getMySQLConnection() throws ClassNotFoundException, SQLException {
        String dbName = "vatlieuxaydung";
        String username = "root";
        String password = "";
        return getMySQLConnection(dbName, username, password);
    }

    private static Connection getMySQLConnection(String dbName, String username, String password)
            throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String connectionURL = "jdbc:mysql://localhost:3306/" + dbName;

        return DriverManager.getConnection(connectionURL, username, password);
    }
}