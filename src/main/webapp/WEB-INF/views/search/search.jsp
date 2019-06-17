<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/views/header/home_header.jsp"></jsp:include>

<body>
	<jsp:include page="/WEB-INF/views/header/main_nav.jsp"></jsp:include>
	

	<div class="breadcrumb">
		<div class="container">
			<a class="breadcrumb-item" href="<%=cp%>/index">Home</a> <span
				class="breadcrumb-item active">검색 결과</span>
		</div>
	</div>

	<div class="container">
		<form class="form-inline my-2 my-lg-0 search_book" method="post" action="<%=cp%>/booklist.do">
			<div class="search_form">
				<select name="searchOption" class="search_form_select">
					<option value="all" <c:out value="${map.searchOption =='all'?'selected':'' }"/> >통합검색</option>
					<option value="TITLE" <c:out value="${map.searchOption =='TITLE'?'selected':'' }"/>>제목</option>
					<option value="AUTHOR" <c:out value="${map.searchOption =='AUTHOR'?'selected':'' }"/>>저자</option>
					<option value="PUBLISHER" <c:out value="${map.searchOption =='PUBLISHER'?'selected':'' }"/>>출판사</option>
					<option value="ISBN_ISSN" <c:out value="${map.searchOption =='ISBN_ISSN'?'selected':'' }"/>>ISBN</option>
				</select> 
				
				<input class="form-control" name="keyword" value="${map.keyword}"
					style="height: 50px; border: none; width: 55%;"
					placeholder="Search here..." aria-label="Search">
				<button type="submit" value="search" class="fa fa-search search_button" ></button>
			</div>
		</form>
	</div>

	<div class="container">
		<div class="result_container result_book">
			<!--List...-->
			<span> ${map.count}개의 검색결과가 있습니다.</span>

			<c:forEach var="row" items="${map.list}">
			<ul>
				<a href="<%=cp%>/product_single">
					<div class="book_image">
						<img src="<%=cp%>/resources/images/product1.jpg">
					</div>
				</a>
					<div class="book_info">
						<li class="item">타이틀 : ${ row.TITLE }</li>
						<li class="item">저자 : ${ row.AUTHOR}</li>
						<li class="item">출판사 : ${ row.ISBN_ISSN }</li>
						<li class="item">ISBN : ${ row.PUBLISHER }</li>
					</div>
				
			</ul>
			
			</c:forEach>
			
		</div>
	</div>

<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>