/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SignInServlet", urlPatterns = {"/SignInServlet"})
public class SignInServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public SignInServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("Servlet at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = null;
        try {
            conn = MySQLConntUtils.getMySQLConnection();
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            UserAccount userAccount = new UserAccount(username, password);

            UserAccount foundUser = DBUtils.findUser(conn, userAccount.getUsername(), userAccount.getPassword());

            if (foundUser != null) {
                // Store username in the session
                request.getSession().setAttribute("username", foundUser.getUsername());
                request.setAttribute("username", "Chào bạn: " + foundUser.getUsername());
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } else {
                request.setAttribute("errorMessage", "Thông tin đăng nhập không chính xác");
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/SignIn.jsp");
                dispatcher.forward(request, response);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(SignInServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (conn != null && !conn.isClosed()) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(SignInServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}