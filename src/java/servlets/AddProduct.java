package servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/AddProduct")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class AddProduct extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Get form data
        String idStr = request.getParameter("id");
        String name = request.getParameter("name");
        Part filePart = request.getPart("image");
        String price = request.getParameter("price");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String cateidStr = request.getParameter("cateid");

        try {
            // Convert ID String to int
            int id = Integer.parseInt(idStr);
            int cateid = Integer.parseInt(cateidStr);
            // Get the absolute path of the image directory
            String uploadPath = getServletContext().getRealPath("") + File.separator + "img";

            // Save the file to the server
            String fileName = saveFile(filePart, uploadPath);

            Product product = new Product(id, name, fileName, price, title, description, cateid);

            // Get a database connection
            Connection conn = MySQLConntUtils.getMySQLConnection();

            ProductDAO.insertProduct(conn, product);

            // Close the database connection
            conn.close();

            // Display success message
            request.setAttribute("successMessage", "Thêm sản phẩm thành công!");
            request.getRequestDispatcher("/thongbaoaddproduct.jsp").forward(request, response);
        } catch (Exception e) {
            // Display error message
            request.setAttribute("errorMessage", "Thêm sản phẩm thất bại: " + e.getMessage());
            request.getRequestDispatcher("/thongbaoaddproduct.jsp").forward(request, response);
        }
    }

    private String saveFile(Part filePart, String uploadPath) throws IOException {
        String fileName = "";
        try {
            fileName = System.currentTimeMillis() + "_" + getFileName(filePart);
            filePart.write(uploadPath + File.separator + fileName);
        } catch (IOException e) {
            throw new IOException("Error saving file: " + e.getMessage());
        }
        return fileName;
    }

    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        for (String content : partHeader.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}