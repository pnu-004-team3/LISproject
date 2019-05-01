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
				class="breadcrumb-item active">대출/예약/연장</span>
		</div>
	</div>
	<section class="static about-sec">
		<div class="container">
			<h1>대출/예약/연장</h1>
			<ul>
				<li class="menu_item"><a href="<%=cp%>/loan">대출현황</a></li>
				<li class="menu_item"><a href="<%=cp%>/reservation">예약현황</a></li>
				<li class="menu_item"><a href="<%=cp%>/loan-history">대출/반납 기록</a></li>
				<li class="menu_item"><a href="<%=cp%>/lost">분실 기록</a></li>
				<li class="menu_item"><a href="<%=cp%>/late-fee">연체 내역</a></li>
			</ul>

		</div>
		<div class="">
			<table class="">
				<thead>
					<tr>
						<th scope="col" class="col-no">번호</th>
						<th scope="col" class="col-auto">서명/저자</th>
						<th scope="col" class="col-1e">처리일</th>
						<th scope="col" class="col-1">연체일수</th>
						<th scope="col" class="col-1">연체금액</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="col-no" data-th="번호"></td>
						<td class="left" data-th="서명/저자"><a href="<%=cp%>/"></a></td>
						<td class="loan-date" data-th="처리일">2019-00-00</td>
						<td class="expiry-date" data-th="연체일수">-00</td>
						<td class="overdays" data-th="연체금액">0</td>
					</tr>

				</tbody>
			</table>
			<input type="hidden" id="i18n_modal_title" value="대출도서 연장">
		</div>
		<!-- //List -->
	</section>
	
	<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>
