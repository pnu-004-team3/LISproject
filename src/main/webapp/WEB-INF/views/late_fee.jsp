<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

<jsp:include page="/WEB-INF/views/header/mylibrary.jsp"></jsp:include>

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
	<jsp:include page="/WEB-INF/views/header/main_nav.jsp"></jsp:include>
	
<div class="container">
	<div class="breadcrumb">
		<div class="container">
			<a class="breadcrumb-item" href="<%=cp%>/index">Home</a> <span
				class="breadcrumb-item active">My Library</span> <span
				class="breadcrumb-item active">대출/예약/연장</span>
		</div>
	</div>
	<section class="static about-sec">
		<div class="container">
			<h1>대출/예약/연장</h1>
			<ul>
				<li class="menu_item" style="float:left">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<a href="<%=cp%>/loan">대출현황</a>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</li>
			
				<li class="menu_item" style="float:left">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<a href="<%=cp%>/reservation">예약현황</a>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</li>
		
				<li class="menu_item" style="float:left">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<a href="<%=cp%>/loan_history">대출/반납 기록</a>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</li>
		
				<li class="menu_item" style="float:left">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<a href="<%=cp%>/lost">분실 기록</a>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</li>

				<li class="menu_item" style="float:left">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<a href="<%=cp%>/late_fee">연체 내역</a></li>
			</ul>

		</div>
		<div class="slider">
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
							<col style="width: 15px;">

						</colgroup>
						<tbody>
							<tr>
								<td class="title">NO.</td>
								<td class="title">도서명</td>
								<td class="title">처리일</td>
								<td class="title">연체일수</td>
								<td class="title">연체금액</td>
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
							
							</colgroup>
							<tbody>
							<c:forEach items="${borrowedList}" var="borrowed">
								<tr>
									<td class="content right_border">1</td>
									<td class="content right_border"><a href="<%=cp%>/">${borrowed.TITLE}</a></td>
									<td class="content right_border">중앙도서관</td>
									<td class="content right_border">${borrowed.Return_Date}</td>
									<td class="content right_border">${borrowed.Overdue_Date}</td>
									<td class="content right_border">0000</td>
								</tr>
									<tr>
									<td class="content right_border">2</td>
									<td class="content right_border"><a href="<%=cp%>/">${borrowed.TITLE}</a></td>
									<td class="content right_border">중앙도서관</td>
									<td class="content right_border">${borrowed.Return_Date}</td>
									<td class="content right_border">${borrowed.Overdue_Date}</td>
									<td class="content right_border">0000</td>
								</tr>
								<tr>
									<td class="content right_border">3</td>
									<td class="content right_border"><a href="<%=cp%>/">${borrowed.TITLE}</a></td>
									<td class="content right_border">중앙도서관</td>
									<td class="content right_border">${borrowed.Return_Date}</td>
									<td class="content right_border">${borrowed.Overdue_Date}</td>
									<td class="content right_border">0000</td>
								</tr>
								<tr>
									<td class="content right_border">4</td>
									<td class="content right_border"><a href="<%=cp%>/">${borrowed.TITLE}</a></td>
									<td class="content right_border">중앙도서관</td>
									<td class="content right_border">${borrowed.Return_Date}</td>
									<td class="content right_border">${borrowed.Overdue_Date}</td>
									<td class="content right_border">0000</td>
								</tr>
								<tr>
									<td class="content right_border">5</td>
									<td class="content right_border"><a href="<%=cp%>/">${borrowed.TITLE}</a></td>
									<td class="content right_border">중앙도서관</td>
									<td class="content right_border">${borrowed.Return_Date}</td>
									<td class="content right_border">${borrowed.Overdue_Date}</td>
									<td class="content right_border">0000</td>
								</tr>																																
								</c:forEach>
							</tbody>
						</table>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
		</div>
		<!-- //List -->
	</section>
</div>
	
	<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>
