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
			<a class="breadcrumb-item" href="<%=cp%>/index">Home</a> <span
				class="breadcrumb-item active">My Library</span>
		</div>
	</div>
	<section class="static about-sec">
		<div class="container">
			<h1>My Library</h1>
			<header class="section-title">
				<h3>
					<a href="<%=cp%>/UserInfo_manage">회원정보 관리</a>
				</h3>
			</header>
			<div class="section-body">
				<p>정보수정, 개인정보활용동의, 알림설정, 개인공지사항, 내서재</p>
			</div>
			<header class="section-title">
				<h3>
					<a href="<%=cp%>/loan">대출/연장/예약 조회</a>
				</h3>
			</header>
			<div class="section-body">
				<p>대출/예약 상황, 대출/반납기록, 분실기록, 연체료내역</p>
			</div>
		</div>
	</section>
	
	<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>
