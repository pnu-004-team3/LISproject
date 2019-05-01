<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="ko-KR">

<head>
<meta charset="UTF-8">
<title>Book Store</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="theme-color" content="#03a6f3">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/styles_search.css">
</head>

<body>
	<header>
		<div class="header-top">
			<div class="container">
				<div class="main-menu">
					<div class="container">
						<nav class="navbar navbar-expand-lg navbar-light">
							<a class="navbar-brand" href="index.html"><img
								src="images/logo.png" alt="logo"></a>
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="navbarSupportedContent">
								<ul class="navbar-nav ml-auto">
									<li class="navbar-item active"><a href="index.html"
										class="nav-link">Home</a></li>
									<li class="navbar-item"><a href="shop.html"
										class="nav-link"> -- ë¡ê·¸ì¸ --</a></li>
									<li class="navbar-item"><a href="about.html"
										class="nav-link">ìì¤ìë´</a></li>
									<li class="navbar-item"><a href="main_MyLib.html"
										class="nav-link">My Library</a></li>
									<li class="navbar-item"><a href="managerMain.html"
										class="nav-link">ê´ë¦¬ì íì´ì§</a></li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="blank"></div>

	<div class="breadcrumb">
		<div class="container">
			<a class="breadcrumb-item" href="index.html">Home</a> <span
				class="breadcrumb-item active">My Library</span> <span
				class="breadcrumb-item active">íìì ë³´ ê´ë¦¬</span>
		</div>
	</div>
	<section class="static about-sec">
		<div class="container">
			<h1>íìì ë³´ ê´ë¦¬</h1>
			<div class="">
				<ul>
					<a
						href="C:\Users\kin4u\Desktop\4íë ì¤í\book-store_Html\book-store\UserInfo_manage.html"><span>ì ë³´
							ìì </span></a>
				</ul>
				<ul id="" class="">
					<a href=""><span>ë´ ê²ìë¬¼ íì¸</span></a>
				</ul>

			</div>
			<div class="wpb_text_column wpb_content_element ">
				<div class="wpb_wrapper">
					<div id="sr_my_profile" class="solars profile editor ">
						<form action="" id="" class="solars-form" method="post">
							<input type="hidden" name="mod" value="update">

							<h2 class="off-screen">ì¬ì©ì ì ë³´</h2>
							<table class="rd-table th-bg gray line responsive">
								<tbody>
									<tr>
										<th scope="row" class="col-2">ìì´ë(íë²/êµë²)</th>
										<td>DBìì ìì´ë ë°ìì¤ë ê³³</td>
									</tr>
									<tr>
										<th scope="row">ì´ë¦</th>
										<td>DBìì ì´ë¦ ë°ìì¤ë ê³³</td>
									</tr>
									<tr>
										<th scope="row">ìì</th>
										<td>DBìì ìì ë°ìì¤ë ê³³</td>
									</tr>
									<tr>
										<th scope="row">ì´ëì í</th>
										<td><input type="text" id="phone_number"
											name="phone_number" value="" class=""></td>
									</tr>
									<tr>
										<th scope="row">ì´ë©ì¼</th>
										<td><input type="text" id="user_email" name="user_email"
											value="" class=""></td>
									</tr>
								</tbody>
							</table>
	</section>
	
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="address">
						<h4>Footer ..</h4>
						<h6>LIS</h6>
						<h6>- blank -</h6>
						<h6>- blank -</h6>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h5>(C) 2017. All Rights Reserved. BookStore Wordpress Theme</h5>
					</div>
					<div class="col-md-6">
						<div class="share align-middle">
							<span class="fb"><i class="fa fa-facebook-official"></i></span> <span
								class="instagram"><i class="fa fa-instagram"></i></span> <span
								class="twitter"><i class="fa fa-twitter"></i></span> <span
								class="pinterest"><i class="fa fa-pinterest"></i></span> <span
								class="google"><i class="fa fa-google-plus"></i></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script src="js/custom.js"></script>
</body>

</html>
