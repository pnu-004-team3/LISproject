<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

<jsp:include page="/WEB-INF/views/header/home_header.jsp"></jsp:include>

<body>
	<jsp:include page="/WEB-INF/views/header/main_nav.jsp"></jsp:include>
	

	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<td><B>BookName</B></td>
					<td><B>BorrowedDate</B></td>
					<td><B>ReturnDate</B></td>
					<td><B>Period</B></td>
				</tr>
			</thead>
			<tbody>
				<!-- {% for candidate in candidates %} -->
				<tr>
					<td>{{candidate.BookName}}</td>
					<td>{{candidate.BorrowedDate}}</td>
					<td>{{candidate.ReturnDate}}</td>
					<td>{{candidate.Period}}</td>
				</tr>
				<!-- {% endfor %} -->
			<tbody>
		</table>
	</div>
	
	<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>