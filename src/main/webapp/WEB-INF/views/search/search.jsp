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
		<div class="counter" style="margin-top:20px;">
		<span> <h2> ${map.count}개의 검색결과가 있습니다.</h2></span>
		</div>
		<div class="result_container result_book">
			<!--List...-->
				
			<c:forEach var="row" varStatus="num" items="${map.list}">
			<ul>
				<a href="<%=cp%>/product_single">
					<div class="book_image">
						<img id="book_img${num.index}" src="<%=cp%>/resources/images/no_book_image.jpg">
					</div>
				</a>
					<div class="book_info">
						<li class="item">타이틀 : ${ row.TITLE }</li>
						<li class="item">저자 : ${ row.AUTHOR}</li>
						<li class="item">출판사 : ${ row.PUBLISHER }</li>
						<li id="isbn${num.index}" class="item">ISBN : ${ row.ISBN_ISSN }</li>
					</div>
			</ul>
			<script>
				// 이게 ajax 동기식 비동기식 그 문젠데... 해결을 못하겠음. 
					var i = 0
					var main = $("li[id^=isbn${num.index}]"); // aladin-bookinfo로 시작하는 id를 가진 div 엘리먼트를 찾습니다
					// 그 엘리먼트가 존재한다면
					if(main.length>0) {
					     var id = main[0].innerText.substr(7,10); // ISBN(10자리)부분을 잘라내서 얻습니다 (16칸부터 10개만큼의 문자 얻기)
					     var url = "http://www.aladin.co.kr/ttb/api/ItemLookUp.aspx?ttbkey=ttbsay002000040111001&cover=big&ItemId=" + id + "&output=js&callback=bookDisplay";
					     // 콜백 함수입니다.
					     $.ajax({
					        url: url,
					        jsonp: "bookDisplay",
					        dataType: "jsonp",
					        async: false,
					     });
					     function bookDisplay(success,data) {
					 		if(success != null){
					 			console.log(i)
					 			var image = document.getElementById("book_img" + i);
						        image.src = data.item[0].cover;
						        i = i + 1;
					   		}
					        
					     }
					 
					    // AJAX 요청을 보냅니다. getJSON() 함수는 알라딘 API 대용으로 사용불가.
					}
			</script>
			
			</c:forEach>
			
		</div>
	</div>

<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>