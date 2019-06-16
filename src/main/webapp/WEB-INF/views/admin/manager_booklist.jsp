<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String cp = request.getContextPath();
request.setCharacterEncoding("UTF-8");
%>

<jsp:include page="/WEB-INF/views/header/manager_header.jsp"></jsp:include>

<body>
	<jsp:include page="/WEB-INF/views/header/main_nav.jsp"></jsp:include>


<div class="breadcrumb">
	<div class="container">
		<a class="breadcrumb-item" href="<%=cp%>/index">Home</a> <span
			class="breadcrumb-item active">Login</span>
	</div>
</div>


<!-- 도서등록 페이지 -->

<section class="static about-sec">
	<div class="container">
		<div class="relative1">
			<h1>소장 도서 관리</h1>

			<form class="form-inline my-2 my-lg-0 search_book">
				<div class="search_form">
					<select class="search_form_select">
						<option value="0">도서 제목</option>
						<option value="1">도서 ISBN</option>
						<option value="2">도서 저자</option>
						<option value="3">출판사</option>

					</select> <input class="form-control" type="search"
						style="height: 50px; border: none; width: 55%;"
						placeholder="Search here..." aria-label="Search">
						<button type="submit" class="fa fa-search search_button"></button>
					</div>
				</form>

			</div>



			<div class="relative2">
				<div class="result_book">
					<html>
<head>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(function() {
	// divBodyScroll의 스크롤이 동작할때에 함수를 불러옵니다.
	$('#divBodyScroll').scroll(function() {
		// divBodyScroll의 x좌표가 움직인 거리를 가져옵니다.
		var xPoint = $('#divBodyScroll').scrollLeft();

		// 가져온 x좌표를 divHeadScroll에 적용시켜 같이 움직일수 있도록 합니다.
		$('#divHeadScroll').scrollLeft(xPoint);
	});

	// 처음에 divBodyScroll의 세로스크롤 너비를 알수 없기 때문에
	// 스크롤을 우측으로 최대한 움직인 후 버튼을 눌러 두 스크롤의 차이를 찾아서 그 크기 만큼 tblHead의 공백 Column의 width를 지정해줍니다.
	$('#btnCheck').click(function() {
		var headMaximum = $('#divHeadScroll').scrollLeft();
		var bodyMaximum = $('#divBodyScroll').scrollLeft();

		alert('head: ' + headMaximum + '\nbody: ' + bodyMaximum);
	});
});
</script>
</head>
<body>
	<table id="tblBackground" cellspacing="0">
		<tbody>
			<tr>
				<td>
					<div id="divHeadScroll">
						<table id="tblHead" border="0">
							<colgroup>
								<col style="width: 100px;">
							<col style="width: 100px;">
							<col style="width: 100px;">
							<col style="width: 100px;">
							<col style="width: 100px;">
							<col style="width: 100px;">
							<col style="width: 100px;">
							<col style="width: 100px;">
							<col style="width: 100px;">
							<col style="width: 100px;">
							<col style="width: 100px;">
							<col style="width: 15px;">
						</colgroup>
						<tbody>
							<tr>
								<td class="title">NO.</td>
								<td class="title">등록번호</td>
								<td class="title">도서명</td>
								<td class="title">저자</td>
								<td class="title">출판사</td>
								<td class="title">출판년</td>
								<td class="title">별치기호</td>
								<td class="title">청구기호</td>
								<td class="title">권.연차</td>
								<td class="title">복본기호</td>
								<td class="title">소장처</td>

								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="divBodyScroll">
					<table id="tblBody" border="0">
						<colgroup>
							<col style="width: 100px;" class="right_border">
							<col style="width: 100px;" class="right_border">
							<col style="width: 100px;" class="right_border">
							<col style="width: 100px;" class="right_border">
							<col style="width: 100px;" class="right_border">
							<col style="width: 100px;" class="right_border">
							<col style="width: 100px;" class="right_border">
							<col style="width: 100px;" class="right_border">
							<col style="width: 100px;" class="right_border">
							<col style="width: 100px;" class="right_border">
							<col style="width: 100px;" class="right_border">
							</colgroup>
							<tbody>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">홍길동</td>
									<td class="content right_border">공학대학</td>
									<td class="content right_border">컴퓨터공학</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
									<td class="content right_border">없음</td>
								</tr>
							</tbody>
						</table>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	<input type="button" id="btnCheck" value="Click">

</body>
					</html>
					<!--List...-->
				<!-- 이 파트는 이렇게 java 파일안에서 생성되도록 동작 예정-->
				
				
				<script src="<%=cp%>/resources/js/jquery-3.2.1.min.js"></script>
				<script src="<%=cp%>/resources/styles/bootstrap4/popper.js"></script>
				<script src="<%=cp%>/resources/styles/bootstrap4/bootstrap.min.js"></script>
				<script src="<%=cp%>/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
				<script src="<%=cp%>/resources/plugins/easing/easing.js"></script>
				<script src="<%=cp%>/resources/plugins/parallax-js-master/parallax.min.js"></script>
				<script src="<%=cp%>/resources/js/custom.js"></script>
</html>

<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>
