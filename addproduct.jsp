<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>THINSKY - Vật Liệu Xây Dựng Uy Tín</title>
        <link href="img/THINSKY.jpg" rel="shortcut icon"/>
        <!-- Link to Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
        <!-- Add your custom styles here -->
        <style>
            body {
                background-color: #f8f9fa;
            }

            .container {
                margin-top: 50px;
            }

            #imagePreview {
                max-width: 100%;
                max-height: 200px;
                margin-top: 10px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2 class="mb-4">Thêm Sản Phẩm</h2>
            <form action="AddProduct" method="POST" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="id">ID:</label>
                    <input type="text" class="form-control" id="id" name="id" required>
                </div>
                <div class="form-group">
                    <label for="name">Product Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="image">Image File:</label>
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" id="image" name="image" onchange="previewImage(this);">
                        <label class="custom-file-label" for="image">Choose file</label>
                    </div>
                    <img id="imagePreview" src="#" alt="Image Preview" style="display: none;" class="mt-2 img-fluid">
                </div>
                <div class="form-group">
                    <label for="price">Product Price:</label>
                    <input type="text" class="form-control" id="price" name="price" required>
                </div>
                <div class="form-group">
                    <label for="title">Product title:</label>
                    <input type="text" class="form-control" id="title" name="title" required>
                </div>
                <div class="form-group">
                    <label for="description">Product Description:</label>
                    <input type="text" class="form-control" id="description" name="description" required>
                </div>
                <div class="form-group">
                    <label for="cateid">Product CateID:</label>
                    <input type="text" class="form-control" id="cateid" name="cateid" required>
                </div>
                <button type="submit" class="btn btn-primary">Add Product</button>
                <a href="ProductServlet" class="btn btn-secondary">Trở về</a>
            </form>
        </div>

        <!-- Link to Bootstrap JS and Popper.js (required for some Bootstrap features) -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <!-- JavaScript for image preview -->
        <script>
                            function previewImage(input) {
                                var preview = document.getElementById('imagePreview');
                                var file = input.files[0];
                                var reader = new FileReader();

                                reader.onloadend = function () {
                                    preview.src = reader.result;
                                    preview.style.display = 'block';
                                };

                                if (file) {
                                    reader.readAsDataURL(file);
                                } else {
                                    preview.src = '#';
                                    preview.style.display = 'none';
                                }
                            }
        </script>
    </body>
</html>