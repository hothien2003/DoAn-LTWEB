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
        <link rel="stylesheet" href="css/SignUp.css"/>
    </head>
    <body>
        <div class="form-container">
            <p class="title">Đăng ký</p>

            <% String error = (String) request.getAttribute("error");
                if (error != null) {%>
            <div style="color: red">
                <%= error%>
            </div>
            <%}%>


            <form class="form" method="POST" action="SignUpServlet">
                <input type="text" class="input" placeholder="Tên đăng nhập" name="username" id="username" required>
                <input type="text" class="input" placeholder="Số điện thoại" name="phone" id="phone" required>
                <input type="password" class="input" placeholder="Mật khẩu" name="password" id="password" required>
                <button class="form-btn" type="submit">Đăng ký</button>
            </form>

            <p class="sign-up-label">
                Bạn đã có tài khoản? <a href="SignIn.jsp" class="sign-up-link">Đăng nhập</a>
            </p>
        </div>
    </body>
</html>