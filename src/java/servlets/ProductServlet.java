package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = null;

        try {
            // Get a database connection
            conn = MySQLConntUtils.getMySQLConnection();

            List<Product> productList = ProductDAO.getAllProducts(conn);

            request.setAttribute("productList", productList);

            // Forward the request to the JSP page for displaying the product list
            RequestDispatcher dispatcher = request.getRequestDispatcher("/productList.jsp");
            dispatcher.forward(request, response);

        } catch (ClassNotFoundException | SQLException e) {
            // Handle exceptions appropriately (log, redirect, or display an error page)
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal Server Error");

        } finally {
            // Close the database connection in the finally block to ensure it's always closed
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Delegate to the doGet method for both GET and POST requests
        doGet(request, response);
    }
}