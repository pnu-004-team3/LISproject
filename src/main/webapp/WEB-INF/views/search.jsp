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
				class="breadcrumb-item active"> ê²ì ê²°ê³¼</span>
		</div>
	</div>

	<div class="container">
		<form class="form-inline my-2 my-lg-0 search_book">
			<div class="search_form">
				<select id="select_type" class="search_form_select">
					<option value="0">íµí© ê²ì</option>
					<option value="1">ì ëª©</option>
					<option value="2">ì ì</option>
					<option value="3">ì¶íì¬</option>
					<option value="4">ISBN</option>
				</select> <input class="form-control" id="search_input" type="search"
					style="height: 50px; border: none; width: 55%;"
					placeholder="Search here..." aria-label="Search">
				<script>
					// ì´ ë¶ë¶ë jsp ì¬ì©ì ìì  íìí¨..
					var temp = location.href.split("?");
					var data = temp[1].split(":");
					document.getElementById("select_type").value = data[0];
					document.getElementById("search_input").placeholder = data[2];
				</script>
				<button type="button submit" class="fa fa-search search_button"
					onclick="location.href='search'"></button>
				<!-- íì js ëë jsp íì¼ë¡ ì°ê²° ì type=submit onclick="location.href='ì£¼ì'" ì¶ê°í´ì¼í¨. -->
			</div>
		</form>
	</div>

	<div class="container">
		<div class="result_container result_book">
			<!--List...-->
			<!-- ì´ íí¸ë ì´ë ê² java íì¼ììì ìì±ëëë¡ ëì ìì -->
			<ul>
				<a href="<%=cp%>/product-single">
					<div class="book_image">
					<img src="<%=cp%>/resources/images/product1.jpg">
					</div>
					<div class="book_info">
						<li class="item">Book_name</li>
						<li class="item">Author</li>
						<li class="item">íì¤í¸</li>
						<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
					</div>
				</a>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
			<ul>
				<div class="book_image"></div>
				<div class="book_info">
					<li class="item">Book_name</li>
					<li class="item">Author</li>
					<li class="item">Publisher, Pub_year</li>
					<li class="item">ëì¶ê°ë¥ì¬ë¶</li>
				</div>
			</ul>
		</div>
	</div>

<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>