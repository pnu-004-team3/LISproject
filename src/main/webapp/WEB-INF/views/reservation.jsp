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
				class="breadcrumb-item active">ëì¶/ìì½/ì°ì¥</span>
		</div>
	</div>
	<section class="static about-sec">
		<div class="container">
			<h1>ëì¶/ìì½/ì°ì¥</h1>
			<ul>
				<li class="menu_item"><a href="loan.html">ëì¶íí©</a></li>
				<li class="menu_item"><a href="reservation.html">ìì½íí©</a></li>
				<li class="menu_item"><a href="loan-history.html">ëì¶/ë°ë© ê¸°ë¡</a></li>
				<li class="menu_item"><a href="lost.html">ë¶ì¤ ê¸°ë¡</a></li>
				<li class="menu_item"><a href="late-fee.html">ì°ì²´ ë´ì­</a></li>
			</ul>

		</div>
		<div class="">
			<table class="">
				<thead>
					<tr>
						<th scope="col" class="col-no">ë²í¸</th>
						<th scope="col" class="col-auto">ìëª</th>
						<th scope="col" class="col-1e">ìì½ì¼</th>
						<th scope="col" class="col-1">ìì½ë§ë£ì¼</th>
						<th scope="col" class="col-1">ìì½ìì</th>
						<th scope="col" class="col-1">ì¡ì</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="col-no" data-th="ë²í¸"></td>
						<td class="left" data-th="ìëª"><a href=""></a></td>
						<td class="" data-th="ìì½ì¼">ì¤ìëìê´</td>
						<td class="loan-date" data-th="ìì½ë§ë£ì¼">2019-00-00</td>
						<td class="expiry-date" data-th="ìì½ìì">2019-00-00</td>
						<td class="overdays" data-th="ì¡ì">0</td>
					</tr>

				</tbody>
			</table>
			<input type="hidden" id="i18n_modal_title" value="ëì¶ëì ì°ì¥">
		</div>
		<!-- //List -->
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
