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
			<div class="w3-content w3-container w3-margin-top">
                <div class="w3-container w3-card-4">
                    <div class="w3-center w3-large w3-margin-top">
                        <h3>Log In</h3>
                    </div>
                    <div>
                        <form action="../member/login.do" method="post">
                            <p>
                                <label>ID</label>
                                <span class="w3-right w3-button w3-hover-white" title="ìì´ë ì°¾ê¸°" id="find_id_btn">
                                    <i class="fa fa-exclamation-triangle w3-hover-text-red w3-large"></i>
                                </span>
                                <input class="w3-input" id="id" name="id" type="text" required>
                            </p>
                            <p>
                                <label>Password</label>
                                <span class="w3-right w3-button w3-hover-white" title="ë¹ë°ë²í¸ ì°¾ê¸°" id="find_pw_btn">
                                    <i class="fa fa-exclamation-triangle w3-hover-text-red w3-large"></i>
                                </span>
                                <input class="w3-input" id="pw" name="pw" type="password" required>
                            </p>
                            <p class="w3-center">
                                <button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">Log in</button>
                                <button type="button" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round" onclick="location.href='<%=cp%>/registration'">Sign in</button>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
		</div>
	</section>
	
	<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>
