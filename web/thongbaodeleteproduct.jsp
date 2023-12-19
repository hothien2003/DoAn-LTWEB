<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>THINSKY - Cổng Thông Tin Sản Phẩm</title>
        <link href="images/THINSKY.png" rel="shortcut icon"/>
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

            .btn-back {
                margin-top: 20px;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <%-- Display success message if available --%>
                    <c:if test="${not empty successMessage}">
                        <div class="alert alert-success" role="alert">
                            <strong>Thông báo!</strong> ${successMessage}
                        </div>
                    </c:if>

                    <%-- Display error message if available --%>
                    <c:if test="${not empty errorMessage}">
                        <div class="alert alert-danger" role="alert">
                            <strong>Thông báo!</strong> ${errorMessage}
                        </div>
                    </c:if>

                    <a href="ProductServlet" class="btn btn-secondary btn-back">Trở về</a>
                </div>
            </div>
        </div>

        <!-- Link to Bootstrap JS and Popper.js (required for some Bootstrap features) -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    </body>
</html>