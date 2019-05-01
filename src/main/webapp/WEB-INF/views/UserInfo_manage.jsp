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
				class="breadcrumb-item active">My Library</span> <span
				class="breadcrumb-item active">회원정보 관리</span>
		</div>
	</div>
	<section class="static about-sec">
		<div class="container">
			<h1>회원정보 관리</h1>
			<div class="up-bar">
				<ul>
					<li><a href="<%=cp%>/UserInfo_manage.html"><span>정보 수정</span></a></li>
					<li><a href="<%=cp%>/UserInfo_manage.html"><span>내 게시물 확인</span></a></li>
				</ul>

			</div>
			<div class="wpb_text_column wpb_content_element ">
				<div class="wpb_wrapper">
					<div id="sr_my_profile" class="solars profile editor ">
						<form action="" id="" class="solars-form" method="post">
							<input type="hidden" name="mod" value="update">
							<br><br><br><br><br><br>
							<h2 class="off-screen">사용자 정보</h2>
							<table class="signSubTitle">
								<tbody>
									<tr>
										<th scope="row" class="col-2">아이디(학번/교번)</th>
										<td>DB에서 아이디 받아오는 곳</td>
									</tr>
									<tr>
										<th scope="row">이름</th>
										<td>DB에서 이름 받아오는 곳</td>
									</tr>
									<tr>
										<th scope="row">소속</th>
										<td>DB에서 소속 받아오는 곳</td>
									</tr>
									<tr>
										<th scope="row">이동전화</th>
										<td><input type="text" id="phone_number"
											name="phone_number" value="" class=""></td>
									</tr>
									<tr>
										<th scope="row">이메일</th>
										<td><input type="text" id="user_email" name="user_email"
											value="" class=""></td>
									</tr>
								</tbody>
							</table>
	</section>
	
	<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>
