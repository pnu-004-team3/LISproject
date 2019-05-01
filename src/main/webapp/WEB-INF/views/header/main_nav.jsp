<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

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
								<li class="navbar-item"><a href="<%=cp%>/login"
									class="nav-link">ë¡ê·¸ì¸</a></li>
								<li class="navbar-item"><a href="<%=cp%>/about"
									class="nav-link">ìì¤ìë´</a></li>
								<li class="navbar-item"><a href="<%=cp%>/main_MyLib"
									class="nav-link">My Library</a></li>
								<li class="navbar-item"><a href="<%=cp%>/managerMain"
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