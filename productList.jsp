<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Vat Lieu Xay Dung THINSKY</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="shortcut icon" href="img/Logo-game.jpg">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/font-awesome.min.css"/>
        <link rel="stylesheet" href="css/owl.carousel.css"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="css/animate.css"/>
        <link rel="stylesheet" href="css/find.css"/>
        <link rel="stylesheet" href="css/card.css"/>
        <style>
            body {
                font-family: 'Arial', sans-serif;
                background-color: #f8f9fa;
            }

            table {
                border-collapse: collapse;
                width: 100%;
                margin: 20px 0;
            }

            th, td {
                border: 1px solid #dee2e6;
                padding: 12px;
                text-align: left;
            }

            th {
                background-color: #007bff;
                color: #fff;
            }

            .btn-container {
                margin-bottom: 20px;
            }

            .btn-container a.btn {
                margin-right: 10px;
                width: 100px;
                height: 38px;
            }

            .btn-container a.btn-primary {
                background-color: #007bff;
                border-color: #007bff;
            }

            .btn-container a.btn-primary:hover {
                background-color: #0056b3;
                border-color: #0056b3;
            }

            .btn-container a.btn-warning,
            .btn-container a.btn-danger {
                width: 100px;
                height: 38px;
            }

            .btn-container a.btn-warning {
                background-color: #ffc107;
                border-color: #ffc107;
            }

            .btn-container a.btn-warning:hover {
                background-color: #d39e00;
                border-color: #d39e00;
            }

            .btn-container a.btn-danger {
                background-color: #dc3545;
                border-color: #dc3545;
            }

            .btn-container a.btn-danger:hover {
                background-color: #c82333;
                border-color: #c82333;
            }

            h2 {
                margin: 20px 0px;
            }
        </style>
    </head>
    <body>
        <header class="header-section">
            <div class="container">
                <!-- logo -->
                <a class="site-logo" href="index.html">
                    <img src="img/Logo-game-nobr.png" style="height: 38px; " alt="">
                </a>
                <div class="user-panel">
                    <a href="ProductServlet">Về trang chủ</a>
                </div>     
                <div class="nav-switch">
                    <i class="fa fa-bars"></i>
                </div>
            </div>
        </header>
        <div class="container">
            <h2>Vật Liệu Xây Dựng Data</h2>

            <div class="btn-container">
                <a href="addproduct.jsp" class="btn btn-primary" role="button">Thêm</a>
            </div>

            <table class="table">
                <thead>
                    <tr>
                        <th>Mã vật liệu</th>
                        <th>Tên vật liệu</th>
                        <th>Hình</th>
                        <th>Trị Giá</th>
                        <th>Tiêu đề</th>
                        <th>Mô tả</th>
                        <th>Mã loại</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${productList}">
                        <tr>
                            <td>${product.id}</td>
                            <td>${product.name}</td>
                            <td><img src="${product.image}" alt="${product.name}"></td>
                            <td>${product.price}</td>
                            <td>${product.title}</td>
                            <td>${product.description}</td>
                            <td>${product.cateid}</td>
                            <td>
                                <a href="editproduct.jsp" class="btn btn-warning" role="button">Sửa</a>
                                <a href="DeleteProduct?productId=${product.id}" class="btn btn-danger" role="button">Xóa</a>                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <!--====== Javascripts & Jquery ======-->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.marquee.min.js"></script>
        <script src="js/main.js"></script>

        <!-- Thêm đoạn mã JavaScript cho chức năng tìm kiếm -->
        <script>
            $(document).ready(function () {
                // Bắt sự kiện khi người dùng nhập liệu vào ô tìm kiếm
                $(".input").on("input", function () {
                    // Lấy giá trị từ ô tìm kiếm
                    var searchText = $(this).val().toLowerCase();

                    // Ẩn tất cả sản phẩm
                    $(".product").hide();

                    // Hiển thị sản phẩm phù hợp với từ khóa tìm kiếm
                    $(".product").each(function () {
                        var productName = $(this).find("h5").text().toLowerCase();
                        if (productName.includes(searchText)) {
                            $(this).show();
                        }
                    });
                });
            });
        </script>

        <script>
            function redirectToPage(url) {
                window.location.href = url;
            }
        </script>
        <script>
            // Acc
            $(document).on("click", ".naccs .menu div", function () {
                var numberIndex = $(this).index();

                if (!$(this).is("active")) {
                    $(".naccs .menu div").removeClass("active");
                    $(".naccs ul li").removeClass("active");

                    $(this).addClass("active");
                    $(".naccs ul").find("li:eq(" + numberIndex + ")").addClass("active");

                    var listItemHeight = $(".naccs ul")
                            .find("li:eq(" + numberIndex + ")")
                            .innerHeight();
                    $(".naccs ul").height(listItemHeight + "px");
                }
            });
        </script>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>
