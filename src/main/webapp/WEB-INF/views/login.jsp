<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

<html lang="en">
<head>
<title>Bluesky</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Bluesky template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/styles/bootstrap4/bootstrap.min.css">
<link href="<%=cp%>/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/styles/responsive.css">
</head>
<body>

<div class="super_container">

	<!-- Header -->

	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="header_content d-flex flex-row align-items-center justify-content-start">
						<div class="logo">
							<a href="<%=cp%>/#"><img src="<%=cp%>/resources/images/logo.png" alt=""></a>
						</div>
						<nav class="main_nav">
							<ul>
								<li class="active"><a href="<%=cp%>/index">Home</a></li>
								<li><a href="<%=cp%>/about">About us</a></li>
								<li><a href="<%=cp%>/properties">Properties</a></li>
								<li><a href="<%=cp%>/news">News</a></li>
								<li><a href="<%=cp%>/contact">Contact</a></li>
							</ul>
						</nav>
						<div class="phone_num ml-auto">
							<div class="phone_num_inner">
								<img src="<%=cp%>/resources/images/phone.png" alt=""><span>652-345 3222 11</span>
							</div>
						</div>
						<div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Menu -->

	<div class="menu trans_500">
		<div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
			<div class="menu_close_container"><div class="menu_close"></div></div>
			<div class="logo menu_logo">
				<a href="<%=cp%>/#">
					<div class="logo_container d-flex flex-row align-items-start justify-content-start">
						<div class="logo_image"><div><img src="<%=cp%>/resources/images/logo.png" alt=""></div></div>
					</div>
				</a>
			</div>
			<ul>
				<li class="menu_item"><a href="<%=cp%>/index">Home</a></li>
				<li class="menu_item"><a href="<%=cp%>/about">About us</a></li>
				<li class="menu_item"><a href="<%=cp%>/#">Speakers</a></li>
				<li class="menu_item"><a href="<%=cp%>/#">Tickets</a></li>
				<li class="menu_item"><a href="<%=cp%>/news">News</a></li>
				<li class="menu_item"><a href="<%=cp%>/contact">Contact</a></li>
			</ul>
		</div>
		<div class="menu_phone"><span>call us: </span>652 345 3222 11</div>
	</div>

    <body>
        <div class="w3-content w3-container w3-margin-top">
            <div class="w3-container w3-card-4">
                <div class="w3-center w3-large w3-margin-top">
                    <h3>Log In</h3>
                </div>
                <div>
                    <form action="../member/login.do" method="post">
                        <p>
                            <label>ID</label>
                            <span class="w3-right w3-button w3-hover-white" title="아이디 찾기" id="find_id_btn">
                                <i class="fa fa-exclamation-triangle w3-hover-text-red w3-large"></i>
                            </span>
                            <input class="w3-input" id="id" name="id" type="text" required>
                        </p>
                        <p>
                            <label>Password</label>
                            <span class="w3-right w3-button w3-hover-white" title="비밀번호 찾기" id="find_pw_btn">
                                <i class="fa fa-exclamation-triangle w3-hover-text-red w3-large"></i>
                            </span>
                            <input class="w3-input" id="pw" name="pw" type="password" required>
                        </p>
                        <p class="w3-center">
                            <button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">Log in</button>
                            <button type="button" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round" onclick="history.go(-1)">Cancel</button>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </body>



	<!-- Footer -->

	<footer class="footer">
		<div class="footer_main">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="footer_logo"><a href="<%=cp%>/#"><img src="<%=cp%>/resources/images/logo_large.png" alt=""></a></div>
					</div>
					<div class="col-lg-9 d-flex flex-column align-items-start justify-content-end">
						<div class="footer_title">Latest Properties</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3 footer_col">
						<div class="footer_about">
							<div class="footer_about_text">Donec in tempus leo. Aenean ultricies mauris sed quam lacinia lobortis. Cras ut vestibulum enim, in gravida nulla. Curab itur ornare nisl at sagittis cursus.</div>
						</div>
					</div>
					<div class="col-lg-3 footer_col">
						<div class="footer_latest d-flex flex-row align-items-start justify-content-start">
							<div><div class="footer_latest_image"><img src="<%=cp%>/resources/images/footer_latest_1.jpg" alt=""></div></div>
							<div class="footer_latest_content">
								<div class="footer_latest_location">Miami</div>
								<div class="footer_latest_name"><a href="<%=cp%>/#">Sea view property</a></div>
								<div class="footer_latest_price">$ 1. 234 981</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 footer_col">
						<div class="footer_latest d-flex flex-row align-items-start justify-content-start">
							<div><div class="footer_latest_image"><img src="<%=cp%>/resources/images/footer_latest_2.jpg" alt=""></div></div>
							<div class="footer_latest_content">
								<div class="footer_latest_location">Miami</div>
								<div class="footer_latest_name"><a href="<%=cp%>/#">Town House</a></div>
								<div class="footer_latest_price">$ 1. 234 981</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 footer_col">
						<div class="footer_latest d-flex flex-row align-items-start justify-content-start">
							<div><div class="footer_latest_image"><img src="<%=cp%>/resources/images/footer_latest_3.jpg" alt=""></div></div>
							<div class="footer_latest_content">
								<div class="footer_latest_location">Miami</div>
								<div class="footer_latest_name"><a href="<%=cp%>/#">Modern House</a></div>
								<div class="footer_latest_price">$ 1. 234 981</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer_bar">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="footer_bar_content d-flex flex-row align-items-center justify-content-start">
							<div class="cr"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</div>
							<div class="footer_nav">
								<ul>
									<li><a href="<%=cp%>/index">Home</a></li>
									<li><a href="<%=cp%>/#">About us</a></li>
									<li><a href="<%=cp%>/properties">Properties</a></li>
									<li><a href="<%=cp%>/news">News</a></li>
									<li><a href="<%=cp%>/contact">Contact</a></li>
								</ul>
							</div>
							<div class="footer_phone ml-auto"><span>call us: </span>652 345 3222 11</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>

<script src="<%=cp%>/resources/js/jquery-3.2.1.min.js"></script>
<script src="<%=cp%>/resources/styles/bootstrap4/popper.js"></script>
<script src="<%=cp%>/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="<%=cp%>/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="<%=cp%>/resources/plugins/easing/easing.js"></script>
<script src="<%=cp%>/resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="<%=cp%>/resources/js/custom.js"></script>
</body>
</html>
