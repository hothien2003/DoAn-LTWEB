package servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/EditProduct")
public class EditProduct extends HttpServlet {

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
            // Check if idStr and cateidStr are not null
            if (idStr != null && cateidStr != null) {
                // Convert ID String to int
                int id = Integer.parseInt(idStr);
                int cateid = Integer.parseInt(cateidStr);

                // Get the absolute path of the image directory
                String uploadPath = getServletContext().getRealPath("") + File.separator + "img";

                // Save the file to the server
                String fileName = saveFile(filePart, uploadPath);

                Product updatedProduct = new Product(id, name, fileName, price, title, description, cateid);

                // Get a database connection
                Connection conn = MySQLConntUtils.getMySQLConnection();

                ProductDAO.updateProduct(conn, updatedProduct, uploadPath);

                // Close the database connection
                conn.close();

                // Display success message
                request.setAttribute("successMessage", "Cập nhật sản phẩm thành công!");
                request.getRequestDispatcher("/thongbaoeditproduct.jsp").forward(request, response);
            } else {
                // Handle the case where idStr or cateidStr is null
                // Display an error message or take appropriate action
                String errorMessage = "Cập nhật sản phẩm thất bại: ";
                if (idStr == null) {
                    errorMessage += "Tham số id là null.";
                }
                if (cateidStr == null) {
                    errorMessage += (idStr == null ? "" : " ") + "Tham số cateid là null.";
                }
                request.setAttribute("errorMessage", errorMessage);
                request.getRequestDispatcher("/thongbaoeditproduct.jsp").forward(request, response);
            }
        } catch (Exception e) {
            // Display error message
            request.setAttribute("errorMessage", "Cập nhật sản phẩm thất bại: " + e.getMessage());
            request.getRequestDispatcher("/thongbaoeditproduct.jsp").forward(request, response);
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
