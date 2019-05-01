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
				class="breadcrumb-item active">íìì ë³´ ê´ë¦¬</span>
		</div>
	</div>
	<section class="static about-sec">
		<div class="container">
			<h1>íìì ë³´ ê´ë¦¬</h1>
			<div class="">
				<ul>
					<a
						href="<%=cp%>/C:\Users\kin4u\Desktop\4íë ì¤í\book-store_Html\book-store\UserInfo_manage"><span>ì ë³´
							ìì </span></a>
				</ul>
				<ul id="" class="">
					<a href="<%=cp%>/"><span>ë´ ê²ìë¬¼ íì¸</span></a>
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
	
	<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>
