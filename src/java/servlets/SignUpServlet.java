/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import static servlets.DBUtils.insertUserAccount;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SignUpServlet", urlPatterns = {"/SignUpServlet"})
public class SignUpServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = null;
        try {
            conn = MySQLConntUtils.getMySQLConnection();
            String username = request.getParameter("username");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");

            if (username.isEmpty() || password.isEmpty()) {
                request.setAttribute("error", "Vui lòng điền thông tin");
                request.getRequestDispatcher("/SignUp.jsp").forward(request, response);
                return;
            }

            if (DBUtils.isUsernameTaken(conn, username)) {
                request.setAttribute("error", "Tên tài khoản này đã được sử dụng.");
                request.getRequestDispatcher("/SignUp.jsp").forward(request, response);
                return;
            }

            UserAccount usr = new UserAccount(username, phone, password);
            DBUtils.insertUserAccount(conn, usr);
            request.setAttribute("username", username);
            request.getRequestDispatcher("/SignUp.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(SignUpServlet.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error", "An error occurred during registration.");
            request.getRequestDispatcher("/SignUp.jsp").forward(request, response);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(SignUpServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
}