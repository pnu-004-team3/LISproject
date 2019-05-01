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
					<a href="<%=cp%>/UserInfo_manage">íìì ë³´ ê´ë¦¬</a>
				</h3>
			</header>
			<div class="section-body">
				<p>ì ë³´ìì , ê°ì¸ì ë³´íì©ëì, ìë¦¼ì¤ì , ê°ì¸ê³µì§ì¬í­, ë´ìì¬</p>
			</div>
			<header class="section-title">
				<h3>
					<a href="<%=cp%>/loan">ëì¶/ì°ì¥/ìì½ ì¡°í</a>
				</h3>
			</header>
			<div class="section-body">
				<p>ëì¶/ìì½ ìí©, ëì¶/ë°ë©ê¸°ë¡, ë¶ì¤ê¸°ë¡, ì°ì²´ë£ë´ì­</p>
			</div>
		</div>
	</section>
	
	<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>
