<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

<jsp:include page="/WEB-INF/views/header/home_header.jsp"></jsp:include>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                        <form action="<%=cp%>/loginPost" method="post">
                            <p>
                               
                                <input class="w3-input" id="useremail" name="User_key" type="text" placeholder="아이디" required>
                            </p>
                            <p>
                                <input class="w3-input" id="userpw" name="User_PW" type="password" placeholder="비밀번호" required>
                            </p>
                            <p class="w3-center">
                                <button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">Log in</button>
                                <button type="button" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round" onclick="location.href='register'">Sign in</button>
                            
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
