package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteProduct")
public class DeleteProduct extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public DeleteProduct() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productIdString = request.getParameter("productId");

        if (productIdString != null && !productIdString.isEmpty()) {
            int productId = Integer.parseInt(productIdString);

            try {
                Connection conn = MySQLConntUtils.getMySQLConnection();
                ProductDAO.deleteProduct(conn, productId);
                conn.close();

                request.setAttribute("successMessage", "Xóa thành công!");
                request.getRequestDispatcher("thongbaodeleteproduct.jsp").forward(request, response);
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                request.setAttribute("errorMessage", "Xóa thất bại: " + e.getMessage());
                request.getRequestDispatcher("thongbaodeleteproduct.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("errorMessage", "Invalid product ID");
            request.getRequestDispatcher("thongbaodeleteproduct.jsp").forward(request, response);
        }
    }
}