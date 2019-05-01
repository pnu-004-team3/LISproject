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
<title>Show</title>
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

	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<td><B>BookName</B></td>
					<td><B>BorrowedDate</B></td>
					<td><B>ReturnDate</B></td>
					<td><B>Period</B></td>
				</tr>
			</thead>
			<tbody>
				<!-- {% for candidate in candidates %} -->
				<tr>
					<td>{{candidate.BookName}}</td>
					<td>{{candidate.BorrowedDate}}</td>
					<td>{{candidate.ReturnDate}}</td>
					<td>{{candidate.Period}}</td>
				</tr>
				<!-- {% endfor %} -->
			<tbody>
		</table>
	</div>
</body>