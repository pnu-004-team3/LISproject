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
				class="breadcrumb-item active">ëì¶/ìì½/ì°ì¥</span>
		</div>
	</div>
	<section class="static about-sec">
		<div class="container">
			<h1>ëì¶/ìì½/ì°ì¥</h1>
			<ul>
				<li class="menu_item"><a href="<%=cp%>/loan">ëì¶íí©</a></li>
				<li class="menu_item"><a href="<%=cp%>/reservation">ìì½íí©</a></li>
				<li class="menu_item"><a href="<%=cp%>/loan-history">ëì¶/ë°ë© ê¸°ë¡</a></li>
				<li class="menu_item"><a href="<%=cp%>/lost">ë¶ì¤ ê¸°ë¡</a></li>
				<li class="menu_item"><a href="<%=cp%>/late-fee">ì°ì²´ ë´ì­</a></li>
			</ul>

		</div>
		<div class="">
			<table class="">
				<thead>
					<tr>
						<th scope="col" class="col-no">ë²í¸</th>
						<th scope="col" class="col-auto">ìëª</th>
						<th scope="col" class="col-1e">ìì½ì¼</th>
						<th scope="col" class="col-1">ìì½ë§ë£ì¼</th>
						<th scope="col" class="col-1">ìì½ìì</th>
						<th scope="col" class="col-1">ì¡ì</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="col-no" data-th="ë²í¸"></td>
						<td class="left" data-th="ìëª"><a href="<%=cp%>/"></a></td>
						<td class="" data-th="ìì½ì¼">ì¤ìëìê´</td>
						<td class="loan-date" data-th="ìì½ë§ë£ì¼">2019-00-00</td>
						<td class="expiry-date" data-th="ìì½ìì">2019-00-00</td>
						<td class="overdays" data-th="ì¡ì">0</td>
					</tr>

				</tbody>
			</table>
			<input type="hidden" id="i18n_modal_title" value="ëì¶ëì ì°ì¥">
		</div>
		<!-- //List -->
	</section>
	
<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>
