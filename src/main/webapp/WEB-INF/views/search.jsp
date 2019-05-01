<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="en">

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
										class="nav-link">ì»¤ë®¤ëí°</a></li>
									<li class="navbar-item"><a href="about.html"
										class="nav-link">ìì¤ìë´</a></li>
									<li class="navbar-item"><a href="faq.html"
										class="nav-link">My Library</a></li>
									<li class="navbar-item"><a href="login.html"
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
				class="breadcrumb-item active"> ê²ì ê²°ê³¼</span>
		</div>
	</div>

	<div class="container">
		<form class="form-inline my-2 my-lg-0 search_book">
			<div class="search_form">
				<select id="select_type" class="search_form_select">
					<option value="0">íµí© ê²ì</option>
					<option value="1">ì ëª©</option>
					<option value="2">ì ì</option>
					<option value="3">ì¶íì¬</option>
					<option value="4">ISBN</option>
				</select> <input class="form-control" id="search_input" type="search"
					style="height: 50px; border: none; width: 55%;"
					placeholder="Search here..." aria-label="Search">
				<script>
					// ì´ ë¶ë¶ë jsp ì¬ì©ì ìì  íìí¨..
					var temp = location.href.split("?");
					var data = temp[1].split(":");
					document.getElementById("select_type").value = data[0];
					document.getElementById("search_input").placeholder = data[2];
				</script>
				<button type="button submit" class="fa fa-search search_button"
					onclick="location.href='search.html'"></button>
				<!-- íì js ëë jsp íì¼ë¡ ì°ê²° ì type=submit onclick="location.href='ì£¼ì'" ì¶ê°í´ì¼í¨. -->
			</div>
		</form>
	</div>

	<div class="container">
		<div class="result_container result_book">
			<!--List...-->
			<!-- ì´ íí¸ë ì´ë ê² java íì¼ììì ìì±ëëë¡ ëì ìì -->
			<ul>
				<a href="product-single.html">
					<div class="book_image">
					<img src="images/product1.jpg">
					</div>
					<div class="book_info">
						<li class="item">Book_name</li>
						<li class="item">Author</li>
						<li class="item">íì¤í¸</li>
						<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
					</div>
				</a>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
		</div>
	</div>

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