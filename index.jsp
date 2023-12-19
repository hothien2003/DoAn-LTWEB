<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>THINSKY</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets --> 
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesoeet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    </head>
    <body>
        <!-- header section start -->
        <div class="header_section">
            <div class="">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="logo" href="index.html"><img src="images/THINSKY.png"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="index.html">Trang Chủ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.html">Về THINSKY</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="services.html">Dịch Vụ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="SignUp.jsp">Đăng Ký</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="SignIn.jsp">Đăng Nhập</a>
                            </li>

                            <li class="nav-item">
                                <%-- Check if the user is logged in --%>
                                <% if (request.getSession().getAttribute("username") == null) { %>
                                <a href="SignIn.jsp">Đăng nhập</a> / <a href="SignUp.jsp">Đăng ký</a>
                                <% } else {%>
                                <%= request.getSession().getAttribute("username")%> <a href="index.jsp">Logout</a>
                                <% }%>
                            </li>
                        </ul>
                        <div class="search_icon"><a href="#"><img src="images/search-icon.png"></a></div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- header section end --> 
        <!-- banner section start --> 
        <div class="banner_section layout_padding">
            <div id="main_slider" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="container">
                            <h1 class="banner_taital">Sáng Tạo<br>Là<br>Tương Lai</h1>
                            <div class="btn_main">
                                <div class="more_bt"><a href="#">Liên Lạc</a></div>
                                <div class="contact_bt active"><a href="#">Nhận Báo Giá</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="container">
                            <h1 class="banner_taital">Chúng Tôi<br>Sẽ Mang Đến Cho Bạn<br>Ngôi Nhà Trong Mơ</h1>
                            <div class="btn_main">
                                <div class="more_bt"><a href="#">Liên Lạc</a></div>
                                <div class="contact_bt active"><a href="#">Nhận Báo Giá</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="container">
                            <h1 class="banner_taital">Kiến Trúc<br>Thời Thượng<br>Hiện Đại</h1>
                            <div class="btn_main">
                                <div class="more_bt"><a href="#">Liên Lạc</a></div>
                                <div class="contact_bt active"><a href="#">Nhận Báo Giá</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
                    <i class="fa fa-left"><img src="images/left-icon.png"></i>
                </a>
                <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
                    <i class="fa fa-right"><img src="images/right-icon.png"></i>
                </a>
            </div>
        </div>
        <!-- banner section end -->
        <!-- about section start -->
        <div class="about_section layout_padding">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <div class="about_main">
                            <div class="about_taital">Về THINSKY</div>
                            <p class="about_text">Vật liệu xây dựng là một trong những yếu tố quan trọng quyết định chất lượng, độ bền và thẩm mỹ của công trình. Tuy nhiên, việc lựa chọn và mua sắm vật liệu xây dựng không phải là điều dễ dàng, đặc biệt là trong thời đại công nghệ thông tin hiện nay, khi mà nguồn thông tin trên internet là vô tận và không phải lúc nào cũng chính xác.</p>
                            <div class="about_bt"><a href="#">Tìm Hiểu Thêm</a></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="about_img"><img src="images/betong3d.png"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- about section end -->
        <!-- service section start -->
        <div class="services_section layout_padding">
            <div class="container">
                <div class="services_taital">Dịch Vụ Của Chúng Tôi</div>
                <p class="services_text">THINSKY không chỉ bán vật liệu xây dựng, mà còn cung cấp các dịch vụ tư vấn, thiết kế, thi công, bảo hành và bảo trì cho các công trình xây dựng. THINSKY cũng có đội ngũ nhân viên chuyên nghiệp, nhiệt tình và tận tâm, sẵn sàng hỗ trợ khách hàng mọi lúc mọi nơi. THINSKY luôn cam kết mang đến cho khách hàng những sản phẩm và dịch vụ tốt nhất, với giá cả cạnh tranh và thời gian giao hàng nhanh chóng.</p>
            </div>
            <div class="services_section_2 layout_padding">
                <div class="container-fluid padding_0">
                    <div class="box_main">
                        <div class="box_left">
                            <div class="box_left_main">
                                <div class="box_left_one">
                                    <div class="image_1"><img src="images/img-1.png"></div>
                                </div>
                                <div class="box_right_one">
                                    <div class="icon_1"><img src="images/icon-1.png"><span class="padding_left_10">Vật liệu xây dựng cơ bản</span></div>
                                    <p class="long_text">Các vật liệu xây dựng cơ bản bao gồm xi măng,<br> gạch, cát, đá, sắt, thép, v… </p>
                                </div>
                            </div>
                            <div class="see_bt"><a href="#">See More</a></div>
                        </div>
                        <div class="box_middle">
                            <div class="box_left_main">
                                <div class="padding_10">
                                    <div class="icon_1"><img src="images/icon-2.png"><span class="padding_left_10">Vật liệu xây dựng kết cấu</span></div>
                                    <p class="long_text">Các vật liệu xây dựng kết cấu phải có độ cứng,<br> độ bền, khả năng chịu lực và chống ăn mòn tốt.</p>
                                </div>
                            </div>
                            <div class="see_bt"><a href="#">See More</a></div>
                        </div>
                        <div class="box_right">
                            <div class="box_left_main">
                                <div class="box_right_one">
                                    <div class="icon_1"><img src="images/icon-3.png"><span class="padding_left_10">Vật liệu xây dựng hoàn thiện</span></div>
                                    <p class="long_text">Các vật liệu xây dựng hoàn thiện bao gồm sơn, gạch ốp lát, gỗ, nhựa, thảm, giấy dán tường, v…</span></div>
                                    <p class="long_text">  </p>
                                </div>
                            <div class="see_bt"><a href="#">See More</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- service section end -->
        <!-- project section start -->
        <div class="project_section layout_padding">
            <div class="container">
                <h1 class="project_taital">Sản Phẩm</h1>
                <div class="project_menu">
                    <ul>
                        <li class="active"><a href="#">Tất Cả</a></li>
                        <li><a href="#">Xây Dựng</a></li>
                        <li><a href="#">Thương mại</a></li>
                        <li><a href="#">Nội Thất</a></li>
                        <li><a href="#">Nhà Ở</a></li>
                    </ul>
                </div>
            </div>
            <div class="project_section_2 layout_padding">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-3">
                            <div><img src="images/img-3.png" class="image_3"></div>
                        </div>
                        <div class="col-sm-3">
                            <div><img src="images/img-4.png" class="image_3"></div>
                        </div>
                        <div class="col-sm-3">
                            <div><img src="images/img-5.png" class="image_3"></div>
                        </div>
                        <div class="col-sm-3">
                            <div><img src="images/img-6.png" class="image_3"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- project section end -->
        <!-- philosophy section start -->
        <div class="philosophy_section layout_padding">
            <div class="container">
                <h1 class="philosophy_taital">Cách Làm Việc Của Chúng Tôi</h1>
                <p class="philosophy_text">Bạn có thể nhận được tư vấn, báo giá và hỗ trợ kỹ thuật từ đội ngũ nhân viên chuyên nghiệp và nhiệt tình của chúng tôi.</p>
            </div>
            <div class="philosophy_section_2 layout_padding">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 padding_0">
                            <div class="philosophy_box_main">
                                <div class="philosophy_box">
                                    <div class="philosophy_left">
                                        <h1 class="number_text">01</h1>
                                    </div>
                                    <div class="philosophy_right">
                                        <h3 class="quick_text">Phản Hồi Nhanh Chóng</h3>
                                    </div>
                                </div>
                                <div class="philosophy_box">
                                    <div class="philosophy_left">
                                        <h1 class="number_text">02</h1>
                                    </div>
                                    <div class="philosophy_right">
                                        <h3 class="quick_text">Đảm Bảo Sự Hài Lòng</h3>
                                    </div>
                                </div>
                                <div class="philosophy_box">
                                    <div class="philosophy_left">
                                        <h1 class="number_text">03</h1>
                                    </div>
                                    <div class="philosophy_right">
                                        <h3 class="quick_text">Chuyên Nghiệp</h3>
                                    </div>
                                </div>
                                <div class="philosophy_box">
                                    <div class="philosophy_left">
                                        <h1 class="number_text">04</h1>
                                    </div>
                                    <div class="philosophy_right">
                                        <h3 class="quick_text">Chuyển Phát Nhanh Chóng</h3>
                                    </div>
                                </div>
                                <div class="philosophy_box">
                                    <div class="philosophy_left">
                                        <h1 class="number_text">05</h1>
                                    </div>
                                    <div class="philosophy_right">
                                        <h3 class="quick_text">Làm Việc Hiệu Quả</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 padding_0">
                            <div class="image_7"><img src="images/img-7.png"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- philosophy section end -->
        <!-- project section start -->
        <div class="project_section_3 layout_padding">
            <div class="container">
                <h1 class="project_taital">Sản Phẩm Của Chúng Tôi Phục Vụ Nhiều Lĩnh Vực</h1>
                <p class="philosophy_text">Bạn có thể dễ dàng lựa chọn sản phẩm theo danh mục, nhà cung cấp, thương hiệu, giá tiền hoặc đánh giá của khách hàng.</p>
            </div>
            <div class="project_section_2 layout_padding">
                <div id="my_slider" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div>
                                            <img src="images/img-4.png" class="image_6">
                                            <h4 class="reader_text">Các Sản Phẩm <br>Phục Vụ Công Trình</h4>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div>
                                            <img src="images/img-5.png" class="image_6">
                                            <h4 class="reader_text">Các Sản Phẩm <br>Phục Vụ Các Dự Án Lớn</h4>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div>
                                            <img src="images/img-6.png" class="image_6">
                                            <h4 class="reader_text">Các Sản Phẩm <br>Nội Thất</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div>
                                            <img src="images/img-4.png" class="image_6">
                                            <h4 class="reader_text">Các Sản Phẩm <br>Phục Vụ Công Trình</h4>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div>
                                            <img src="images/img-5.png" class="image_6">
                                            <h4 class="reader_text">Các Sản Phẩm <br>Phục Vụ Các Dự Án Lớn</h4>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div>
                                            <img src="images/img-6.png" class="image_6">
                                            <h4 class="reader_text">Các Sản Phẩm <br>Nội Thất</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div>
                                            <img src="images/img-4.png" class="image_6">
                                            <h4 class="reader_text">Các Sản Phẩm <br>Phục Vụ Công Trình</h4>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div>
                                            <img src="images/img-5.png" class="image_6">
                                            <h4 class="reader_text">Các Sản Phẩm <br>Phục Vụ Các Dự Án Lớn</h4>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div>
                                            <img src="images/img-6.png" class="image_6">
                                            <h4 class="reader_text">Các Sản Phẩm <br>Nội Thất</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#my_slider" role="button" data-slide="next">
                        <i class="fa fa-arrow-left"></i>
                    </a>
                    <a class="carousel-control-next" href="#my_slider" role="button" data-slide="next">
                        <i class="fa fa-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
        <!-- project section end -->
        <!-- contact section start -->
        <div class="contact_section layout_padding">
            <div class="container">
                <h1 class="contact_taital">Liên Lạc</h1>
            </div>
            <div class="contact_section_2 layout_padding">
                <div class="container">
                    <div class="mail_section">
                        <div class="row">
                            <div class="col-md-6">
                                <input type="" class="input_text" placeholder="Name" name="Name">
                            </div>
                            <div class="col-md-6">
                                <input type="" class="input_text" placeholder="Email" name="Email">
                            </div>
                        </div>
                        <input type="" class="input_text" placeholder="Phone Number" name="Phone Number">
                        <textarea name="comment" class="massage_box" form="usrform">Góp Ý</textarea>
                        <div class="send_bt">
                            <div class="send_text"><a href="#">Gửi</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- contact section end -->
        <!-- newslatter section start -->
        <div class="newslatter_section layout_padding">
            <div class="container">
                <div class="newslatter_main">
                    <h1 class="looking_text">Có Phải Bạn Đang Tìm Kiếm Vật Liệu Xây Dựng Với Giá Cả Hợp Lý?</h1>
                    <div class="quote_bt"><a href="#">Tìm Hiểu Ngay</a></div>
                </div>
            </div>
        </div>
        <!-- newslatter section end -->
        <!-- client section start -->
        <div class="client_section layout_padding">
            <div class="container">
                <h1 class="client_taital">Phản Hồi Từ Khách Hàng </h1>
                <p class="client_text">Một thực tế lâu đời là người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi nhìn vào bố cục của nó.</p>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="client_section_2 layout_padding">
                                <div class="client_main">
                                    <div class="client_left">
                                        <div class="client_img"><img src="images/Thien.jpg"></div>
                                        <h4 class="henrry_name">Hồ Huỳnh Bảo Thiên</h4>
                                        <h6 class="henrry_text">( CNTT4 )</h6>
                                    </div>
                                    <div class="client_right">
                                        <p class="lorem_text">Tôi rất hài lòng với trang web bán vật liệu xây dựng THINSKY. Trang web có giao diện đẹp, dễ sử dụng và nhanh chóng. </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="client_section_2 layout_padding">
                                <div class="client_main">
                                    <div class="client_left">
                                        <div class="client_img"><img src="images/truong.jpg"></div>
                                        <h4 class="henrry_name">Nguyên Nhật Trường</h4>
                                        <h6 class="henrry_text">( CNTT4 )</h6>
                                    </div>
                                    <div class="client_right">
                                        <p class="lorem_text">Tôi có thể tìm thấy các loại vật liệu xây dựng mà tôi cần một cách dễ dàng, từ gạch, sơn, ngói, đến giấy dán tường, phụ gia chống thấm và thiết bị nước. </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="client_section_2 layout_padding">
                                <div class="client_main">
                                    <div class="client_left">
                                        <div class="client_img"><img src="images/manh.jpg"></div>
                                        <h4 class="henrry_name">Huỳnh Đức Mạnh</h4>
                                        <h6 class="henrry_text">( CNTT4 )</h6>
                                    </div>
                                    <div class="client_right">
                                        <p class="lorem_text">Tôi cảm thấy an tâm khi mua hàng trên trang web này, vì trang web có chính sách bảo hành, đổi trả và giao hàng rõ ràng. </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- client section end -->
        <!-- footer section start -->
        <div class="footer_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-sm-12">
                        <div class="map_text"><a href="#"><img src="images/map-icon.png" class="image_main"><span class="padding_left_10">136 Lê Văn Sỹ Quận Tân Bình,tp.HCM</span></a></div>
                    </div>
                    <div class="col-lg-4 col-sm-12">
                        <div class="map_text"><a href="#"><img src="images/call-icon.png" class="image_main"><span class="padding_left_10">(+84 937307670)</span></a></div>
                    </div>
                    <div class="col-lg-4 col-sm-12">
                        <div class="map_text"><a href="#"><img src="images/mail-icon.png" class="image_main"><span class="padding_left_10">wowtran07@gmail.com</span></a></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer section end -->
        <!-- copyright section start -->
        <div class="copyright_section">
            <div class="container">
                <p class="copyright_text">Copyright 2023 All Right Reserved By.<a href="https://www.facebook.com/profile.php?id=100047278181728"> THINSKY</p>
            </div>
        </div>
        <!-- copyright section end -->    
        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>
        <script src="js/plugin.js"></script>
        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <!-- javascript --> 
        <script src="js/owl.carousel.js"></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    </body>
</html>       