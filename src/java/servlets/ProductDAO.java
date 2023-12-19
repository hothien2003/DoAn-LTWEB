package servlets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    public static List<Product> getAllProducts(Connection conn) throws SQLException {
        List<Product> productList = new ArrayList<>();
        String sql = "SELECT * FROM product";

        try (PreparedStatement pstm = conn.prepareStatement(sql); ResultSet rs = pstm.executeQuery()) {
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String image = rs.getString("image");
                String price = rs.getString("price");
                String title = rs.getString("title");
                String description = rs.getString("description");
                int cateid = rs.getInt("cateID");

                Product product = new Product(id, name, image, price, title, description, cateid);
                productList.add(product);
            }
        }

        return productList;
    }

    public static void insertProduct(Connection conn, Product product) throws SQLException {
        String sql = "INSERT INTO product(id, name, image, price, title, description, cateID) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement pstm = conn.prepareStatement(sql)) {
            pstm.setInt(1, product.getId());  // Assuming product.getId() returns the ID value
            pstm.setString(2, product.getName());
            pstm.setString(3, "img/" + product.getImage());
            pstm.setString(4, product.getPrice());
            pstm.setString(5, product.getTitle());
            pstm.setString(6, product.getDescription());
            pstm.setInt(7, product.getCateid());
            pstm.executeUpdate();
        }
    }

    public static void updateProduct(Connection conn, Product product, String uploadPath) throws SQLException {
        String sql = "UPDATE product SET name=?, image=?, price=?, title=?, description=?,cateID=? WHERE id=?";
        try (PreparedStatement pstm = conn.prepareStatement(sql)) {
            pstm.setString(1, product.getName());
            
            // Nếu hình ảnh được cung cấp, cập nhật đường dẫn mới
            if (product.getImage() != null && !product.getImage().isEmpty()) {
                String imagePath = "img/" + product.getImage();
                pstm.setString(2, imagePath);
            } else {
                // Nếu không có hình ảnh mới, giữ nguyên đường dẫn cũ
                pstm.setString(2, product.getImage());
            }

            pstm.setInt(3, product.getId());
            pstm.setString(4, product.getPrice());
            pstm.setString(5, product.getTitle());
            pstm.setString(6, product.getDescription());
            pstm.setInt(7, product.getCateid());
            pstm.executeUpdate();
        }
    }

    public static Product getProductById(Connection conn, int productId) throws SQLException {
        String sql = "SELECT * FROM product WHERE id = ?";
        try (PreparedStatement pstm = conn.prepareStatement(sql)) {
            pstm.setInt(1, productId);
            try (ResultSet rs = pstm.executeQuery()) {
                if (rs.next()) {
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String image = rs.getString("image");
                    String price = rs.getString("price");
                    String title = rs.getString("title");
                    String description = rs.getString("description");
                    int cateid = rs.getInt("cateID");

                    return new Product(id, name, image, price, title, description, cateid);
                }
            }
        }
        return null;
    }

    public static void deleteProduct(Connection conn, int productId) throws SQLException {
        String sql = "DELETE FROM product WHERE id = ?";
        try (PreparedStatement pstm = conn.prepareStatement(sql)) {
            pstm.setInt(1, productId);
            pstm.executeUpdate();
        }
    }
}
