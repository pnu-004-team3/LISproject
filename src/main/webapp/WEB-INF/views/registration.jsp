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
                        <div class="login-form">
						<h4 style="margin-bottom: 20px;">가입하기</h4>
						<label style="color: #0000FF; font-size: 10px;">(*)는 필수 입력	사항 입니다.</label>
						<form action="<%=cp%>/registPost" method="post" id="registForm">
							<div class="row">
								<div class="col-lg-6">
									
									<div class="form-group">
										<label>이름(*)</label> 
										<input tabindex="0" type="text" class="form-control" placeholder="이름" name="Name">
									</div>
									
									<div class="form-group">
										<label>이메일(ID)(*)</label> 
										<a style="margin-left: 10px;" onclick="sendCertifyEmail();"> 
											<label id="userEmailCertify" style="display: none; color: red; cursor: pointer;">인증메일받기</label>
										</a> 
										<label id="userEmailLabel" style="float: right;"></label> 
										<input id="useremail" tabindex="0" type="email" class="form-control" placeholder="이메일" name="User_key" onkeyup="checkUserEmailMethod();">
									</div>
									
									<div class="form-group">
										<label>비밀번호(* <span style="font-size: 10px; color: red;">8자리 이상</span>)</label>
										<label id="userPwdLabel" style="float: right;"></label> 
										<input tabindex="0"	type="password" class="form-control" placeholder="비밀번호" name="User_PW" onkeyup="checkUserPwdMethod();">
									</div>
									
									<div class="form-group">
										<label>비밀번호 재확인(*)</label>
										<label id="pwdAgainLabel" style="float: right;"></label> 
										<input tabindex="0" type="password" class="form-control" placeholder="비밀번호 확인" name="User_PW_Again" onkeyup="checkPwdAgainMethod();">
									</div>

									<div class="form-group">
										<label>폰 번호(*)</label><br> 
										<input tabindex="0" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' type="text"
											class="form-control" name="user_phone1"
											style="display: inline; width: 32%;" maxlength="3"  /> 
										<input tabindex="0" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' type="text" 
											class="form-control" name="user_phone2"
											style="display: inline; width: 32%; "maxlength="4" /> 
										<input tabindex="0" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' type="text"
											class="form-control" name="user_phone3"
											style="display: inline; width: 33%;" maxlength="4"/> 
										<input type="hidden" name="Phone_NO" />
										<!-- js로 값넣고 controller로 넘김 -->
									</div>

								</div>
								<div class="col-lg-6">

									<div class="form-group">
										<label style="margin-top: 5px;">회원분류(*)</label> 
										<select	class="form-control" name="User_type" tabindex="0">
											<option selected>학생</option>
											<option>교사/임직원</option>
											<option>학부모</option>
										</select>
									</div>

									<div class="checkbox">
										<label> <input type="checkbox" name="termcheck" onclick="selectTerm();"> 약관 정책 동의하기(*)</label> 
										<label id="termSelectLabel"	style="float: right; color: red; text-transform: uppercase;">선택 안됨</label>
									</div>
								</div>
							</div>
							
							<div class="col-lg-6" >
								<div class="form-group" style="display: none">
									<input type="number" class="form-control" placeholder="대여가능권수" name="NO_of_Book_Borrowed"; />
									<input type="text" class="form-control" placeholder="유저대여가능상태" name="User_Status"; />
								</div>
							</div>

							<button tabindex="0" type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30 signupbtn" onclick="return inputcheck()">가입하기</button>
							<div class="register-link m-t-15 text-center">
								<p>
									계정이 있으신가요? <a tabindex="0" href="login"> 로그인하기</a>
								</p>
							</div>
						</form>
					</div>
                    </div>
                </div>
            </div>
		</div>
	</section>
	
	<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>



	<script type="text/javascript">	
	var isValidUserEmail = false;  
	var isValidUserPwd = false;
	var isValidPwdAgain = false;
	var isValidSelectGender = false;
	var isValidSelectTerm = false;
	var isSendCertifyEmail = false; // 인증메일 발송 여부 
	
	$(function(){
		//	페이지 로딩 시 실행할 스크립트
	});
	
	//	Email check javascript
	function check_email(val){
	    if(!val.match(/\S+@\S+\.\S+/)){ // Jaymon's / Squirtle's solution
	        // Do something
	        return false;
	    }
	    if( val.indexOf(' ')!=-1 || val.indexOf('..')!=-1){
	        // Do something
	        return false;
	    }
	    return true;
	}
	
	//전화번호 숫자만 입력
	//http://webskills.kr/archives/310 참고
	function onlyNumber(event){
			event = event || window.event;
			var keyID = (event.which) ? event.which : event.keyCode;
			if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
				return;
			else
				return false;
		}
	function removeChar(event) {
			event = event || window.event;
			var keyID = (event.which) ? event.which : event.keyCode;
			if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
				return;
			else
				event.target.value = event.target.value.replace(/[^0-9]/g, "");
		}
	
	function checkUserEmailMethod(){

	}

	function checkUserPwdMethod() {
		// 일단은 8자 이상이면 pass 추후 협의해야됨
		if ($("input[name='User_PW']").val().length >= 8) {
			// 8자 이상이면 pass
			$("#userPwdLabel").css("color","green");
			$("#userPwdLabel").text("보안성 체크 완료!");
			isValidUserPwd = true;
		} else {
			$("#userPwdLabel").css("color","red");
			$("#userPwdLabel").text("보안성 약함!");
			isValidUserPwd = false;
			
			// 새로 입력하면 again도 false 로,  			
			$("#pwdAgainLabel").css("color","red");
			$("#pwdAgainLabel").text("불일치!");
			isValidPwdAgain = false;			
		}
		checkPwdAgainMethod();
	}
	
	function checkPwdAgainMethod() {
		// 비밀번호 확인
		
		if ($("input[name='User_PW']").val() == $("input[name='User_PW_Again']").val()){
			$("#pwdAgainLabel").css("color","green");
			$("#pwdAgainLabel").text("일치!");
			isValidPwdAgain = true;
		} else {
			$("#pwdAgainLabel").css("color","red");
			$("#pwdAgainLabel").text("불일치!");
			isValidPwdAgain = false;
		}
	}
	

	//약관 체크 확인
	function selectTerm() {
		
		if ($("input[name='termcheck']").is(":checked") == true) {
			isValidSelectTerm = true;
			$("#termSelectLabel").css("color","green");
			$("#termSelectLabel").text("선택 완료");
		} else {
			isValidSelectTerm = false;
			$("#termSelectLabel").css("color","red");
			$("#termSelectLabel").text("선택 안됨");
		}
	}
	
	function inputcheck(){
		//필수 입력사항 체크 Name, ID, PW
		if($("input[name='Name']").val() == null || $("input[name='Name']").val() == ""){
			alert("이름은 필수 입력 사항입니다.");
			$("input[name='Name']").focus();
			return false;
		}
		
		if($("input[name='User_key']").val() == null || $("input[name='User_key']").val() == ""){
			alert("이메일는 필수 입력 사항입니다.");
			$("input[name='User_key']").focus();
			return false;
		}
		
		if($("input[name='User_PW']").val() == null || $("input[name='User_PW']").val() == ""){
			alert("비밀번호는 필수 입력 사항입니다.");
			$("input[name='User_PW']").focus();
			return false;
		}
		
		if($("input[name='user_phone1']").val() == null || $("input[name='user_phone1']").val() == ""){
			alert("전화번호는 필수 입력 사항입니다.");
			$("input[name='user_phone1']").focus();
			return false;
		}
		
		if($("input[name='user_phone2']").val() == null || $("input[name='user_phone2']").val() == ""){
			alert("전화번호는 필수 입력 사항입니다.");
			$("input[name='user_phone2']").focus();
			return false;
		}
		
		if($("input[name='user_phone3']").val() == null || $("input[name='user_phone3']").val() == ""){
			alert("전화번호는 필수 입력 사항입니다.");
			$("input[name='user_phone3']").focus();
			return false;
		}
		
		//비밀번호 체크
		if (!isValidUserPwd) {
			alert("비밀번호가 보안이 취약합니다. 8자 이상으로 해주세요");
			$("input[name='User_PW']").focus();
			$("input[name='User_PW']").val("");
			$("#userPwdLabel").text("");

			$("input[name='User_PW_Again']").val(""); 
			$("#pwdAgainLabel").text(""); 
			return false;
		}
		
		if (!isValidPwdAgain) {
			alert("비밀번호가 일치하지 않습니다.");
			$("input[name='User_PW']").focus();
			$("input[name='User_PW']").val("");
			$("#pwdAgainLabel").text("");
			return false;
		}
		
		
		if(!isValidSelectTerm){
			alert("약관에 동의하여 주십시오.");
			return false;
		}
		
		
		$("input[name='NO_of_Book_Borrowed']").val(0);
		$("input[name='User_Status'']").val('대출가능');	
				
		Phone_NO = $("input[name='user_phone1']").val() + "-" + $("input[name='user_phone2']").val() + "-" + $("input[name='user_phone3']").val();
		$("input[name='Phone_NO']").val(Phone_NO);	

		return true;
	}

	
	
	
	</script>


	<script src="<%=cp%>/resources/js/jquery-3.2.1.min.js"></script>
	<script src="<%=cp%>/resources/styles/bootstrap4/popper.js"></script>
	<script src="<%=cp%>/resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="<%=cp%>/resources/plugins/greensock/TweenMax.min.js"></script>
	<script src="<%=cp%>/resources/plugins/greensock/TimelineMax.min.js"></script>
	<script src="<%=cp%>/resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
	<script src="<%=cp%>/resources/plugins/greensock/animation.gsap.min.js"></script>
	<script src="<%=cp%>/resources/plugins/greensock/ScrollToPlugin.min.js"></script>
	<script
		src="<%=cp%>/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="<%=cp%>/resources/plugins/easing/easing.js"></script>
	<script
		src="<%=cp%>/resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="<%=cp%>/resources/js/about.js"></script>
</body>
</html>