<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
	
	String loginState = null;
	
	if(session.getAttribute("login") != null){
		loginState = "success";
	}else{
		loginState = null;
	}
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="/WEB-INF/views/header/home_header.jsp"></jsp:include>

<header>
	<div class="header-top">
		<div class="container">
			<div class="main-menu">
				<div class="container">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand" href="<%=cp%>/index"><img
							src="<%=cp%>/resources/images/logo.png" alt="logo"></a>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-auto">
								<li class="navbar-item active"><a href="<%=cp%>/"
									class="nav-link">Home</a></li>
								<li class="navbar-item">
								<c:if test="${ login == null }">
									<a href="<%=cp%>/login"	class="nav-link">로그인</a>
								</c:if>
								<c:if test="${ login != null}">
									${userKey}님이 로그인했습니다.
									<a href="<%=cp%>/logout" class="nav-link">로그아웃</a>
								</c:if>
								</li>
								
								<li class="navbar-item"><a href="<%=cp%>/about"
									class="nav-link">시설안내</a></li>
								<li class="navbar-item"><a href="<%=cp%>/main_MyLib"
									class="nav-link">My Library</a></li>
								<li class="navbar-item"><a href="<%=cp%>/managerMain"
									class="nav-link">관리자 페이지</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>

<div class="blank"></div>