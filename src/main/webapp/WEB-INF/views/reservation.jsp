<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

<jsp:include page="/WEB-INF/views/header/mylibrary.jsp"></jsp:include>

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
			<h1><span>대출/예약/연장</span></h1>
			<ul>
				<li class="menu_item"><a href="<%=cp%>/loan">대출현황</a></li>
				<li class="menu_item"><a href="<%=cp%>/reservation">예약현황</a></li>
				<li class="menu_item"><a href="<%=cp%>/loan_history">대출/반납 기록</a></li>
				<li class="menu_item"><a href="<%=cp%>/lost">분실 기록</a></li>
				<li class="menu_item"><a href="<%=cp%>/late_fee">연체 내역</a></li>
			</ul>

		</div>
		<div class="slider">
			<table class="signSubTitle">
				<thead>
					<tr>
						<th scope="col" class="col-no">번호</th>
						<th scope="col" class="col-auto">서명</th>
						<th scope="col" class="col-1e">예약일</th>
						<th scope="col" class="col-1">예약만료일</th>
						<th scope="col" class="col-1">예약순위</th>
						<th scope="col" class="col-1">액션</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="col-no" data-th="번호¸"></td>
						<td class="left" data-th="서명"><a href="<%=cp%>/"></a></td>
						<td class="" data-th="예약일">2019-00-00</td>
						<td class="loan-date" data-th="예약만료일">2019-00-00</td>
						<td class="expiry-date" data-th="예약순위">2019-00-00</td>
						<td class="overdays" data-th="액션">0</td>
					</tr>

				</tbody>
			</table>
			<input type="hidden" id="i18n_modal_title" value="대출도서 연장">
		</div>
		<!-- //List -->
	</section>
</div>
	
<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>
