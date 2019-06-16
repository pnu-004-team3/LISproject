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
			<a class="breadcrumb-item" href="<%=cp%>/index">Admin</a> <span
				class="breadcrumb-item active">Modify Admin</span>
		</div>
	</div>
	<section class="static about-sec">
		<div class="container">
			<h1>ADMIN / Modify Account</h1>
			<p>Please insert information you want to change. Blank includes
				star is required</p>
			<div class="form">
				<form>

					<div class="col-md-10">
						<input type="email" placeholder="Password" required> <span
							class="required-star">*</span>
					</div>
					<div class="col-md-10">
						<input type="email" placeholder="New Password" required> <span
							class="required-star">*</span>
					</div>
					<div class="col-md-10">
						<input type="email" placeholder="Repeat New Password" required>
						<span class="required-star">*</span>
					</div>

					<div class="col-md-10">
						<input type="email" placeholder="E-mail">
					</div>

					<div class="col-md-10">
						<input type="email" placeholder="New Email">
					</div>

					<div class="col-lg-8 col-md-12">
						<button class="btn black">Submit</button>
					</div>
			</div>
			</form>
		</div>
		</div>
	</section>
	
	<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>