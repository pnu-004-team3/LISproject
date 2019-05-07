<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

<jsp:include page="/WEB-INF/views/header/home_header.jsp"></jsp:include>

<body>
	<jsp:include page="/WEB-INF/views/header/main_nav.jsp"></jsp:include>
	

	<div class="breadcrumb">
		<div class="container">
			<a class="breadcrumb-item" href="<%=cp%>/index.html">Admin</a> <span
				class="breadcrumb-item active">Modify User</span>
		</div>
	</div>
	<section class="static about-sec">
		<div class="container">
			<h1>ADMIN / Modify User</h1>
			<p>Please insert User information you want to change.</p>
			<div class="form">
				<form>
					<div class="row">
						<div class="col-md-10">
							<input placeholder="Enter User Name" required> <span
								class="required-star">*</span>
						</div>



						<div class="col-lg-8 col-md-12">
							<button class="btn black" style="margin-right: 20px;">Delete</button>
							<button class="btn black" style="margin-right: 20px;"
								onclick="location.href = <%=cp%>/ModifyUser">Modify</button>
							<button class="btn black" onclick="location.href = <%=cp%>/show">Show</button>

						</div>

					</div>
				</form>
			</div>
		</div>
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

</body>

</html>