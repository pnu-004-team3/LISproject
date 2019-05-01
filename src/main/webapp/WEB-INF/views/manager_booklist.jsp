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
				class="breadcrumb-item active">Login</span>
		</div>
	</div>


	<!-- ëìë±ë¡ íì´ì§ -->

	<section class="static about-sec">
		<div class="container">
			<div class="relative1">
				<h1>ìì¥ ëì ê´ë¦¬</h1>

				<form class="form-inline my-2 my-lg-0 search_book">
					<div class="search_form">
						<select class="search_form_select">
							<option value="0">ëì ì ëª©</option>
							<option value="1">ëì ISBN</option>
							<option value="2">ëì ì ì</option>
							<option value="3">ì¶íì¬</option>

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
	src="<%=cp%>/resources/http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	$(function() {
		// divBodyScrollì ì¤í¬ë¡¤ì´ ëìí ëì í¨ìë¥¼ ë¶ë¬ìµëë¤.
		$('#divBodyScroll').scroll(function() {
			// divBodyScrollì xì¢íê° ìì§ì¸ ê±°ë¦¬ë¥¼ ê°ì ¸ìµëë¤.
			var xPoint = $('#divBodyScroll').scrollLeft();

			// ê°ì ¸ì¨ xì¢íë¥¼ divHeadScrollì ì ì©ìì¼ ê°ì´ ìì§ì¼ì ìëë¡ í©ëë¤.
			$('#divHeadScroll').scrollLeft(xPoint);
		});

		// ì²ìì divBodyScrollì ì¸ë¡ì¤í¬ë¡¤ ëë¹ë¥¼ ìì ìê¸° ëë¬¸ì
		// ì¤í¬ë¡¤ì ì°ì¸¡ì¼ë¡ ìµëí ìì§ì¸ í ë²í¼ì ëë¬ ë ì¤í¬ë¡¤ì ì°¨ì´ë¥¼ ì°¾ìì ê·¸ í¬ê¸° ë§í¼ tblHeadì ê³µë°± Columnì widthë¥¼ ì§ì í´ì¤ëë¤.
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
									<td class="title">ë±ë¡ë²í¸</td>
									<td class="title">ëìëª</td>
									<td class="title">ì ì</td>
									<td class="title">ì¶íì¬</td>
									<td class="title">ì¶íë</td>
									<td class="title">ë³ì¹ê¸°í¸</td>
									<td class="title">ì²­êµ¬ê¸°í¸</td>
									<td class="title">ê¶.ì°ì°¨</td>
									<td class="title">ë³µë³¸ê¸°í¸</td>
									<td class="title">ìì¥ì²</td>

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
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
								</tr>
								<tr>
									<td class="content right_border">20062022</td>
									<td class="content right_border">íê¸¸ë</td>
									<td class="content right_border">ê³µíëí</td>
									<td class="content right_border">ì»´í¨í°ê³µí</td>
									<td class="content right_border">A / B</td>
									<td class="content right_border">A+ / A</td>
									<td class="content right_border">B / B</td>
									<td class="content right_border">B / A</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
									<td class="content right_border">ìì</td>
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
					<!-- ì´ íí¸ë ì´ë ê² java íì¼ììì ìì±ëëë¡ ëì ìì -->

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
