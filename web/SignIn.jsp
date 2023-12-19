<%-- 
    Document   : dangnhap
    Created on : Nov 26, 2023, 1:18:21 PM
    Author     : THINSKY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>THINSKY</title>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Game Warrior Template">
        <meta name="keywords" content="warrior, game, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="img/Logo-game.jpg" rel="shortcut icon"/>
        <link rel="stylesheet" href="css/SignIn.css"/>
    </head>
    <body>
        <div class="form-container">
            <p class="title">Đăng nhập</p>
            <% if (request.getAttribute("errorMessage") != null) {%>
            <div class="form-group">
                <p style="color: red;"><%= request.getAttribute("errorMessage")%></p>
            </div>
            <% }%>
            <form class="form" method="POST" action="SignInServlet">
                <input type="text" class="input" placeholder="Tên đăng nhập" name="username" id="username">
                <input type="password" class="input" placeholder="Mật khẩu" name="password" id="password">
                <button class="form-btn" type="submit">Đăng nhập</button>
            </form>

            <p class="sign-up-label">
                tạo tài khoản mới?<a href="SignUp.jsp" class="sign-up-link">Đăng ký</a>
            </p>
        </div>
    </body>
</html>
