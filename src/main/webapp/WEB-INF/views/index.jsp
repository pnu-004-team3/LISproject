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
		<div class="item" style="position: relative;">
			<div class="content"
				style="position: absolute; width: 100%; top: 250px; vertical-align: middle">
				<div class="container" style="margin-bottom: 10%;">
					<div class="test">
						<h1 style="color: white;">LIS PROJECT</h1>
					</div>
					<form class="form-inline my-2 my-lg-0 search_book">
						<div class="search_form">
							<select id="select_type" class="search_form_select">
								<option value="0">íµí© ê²ì</option>
								<option value="1">ì ëª©</option>
								<option value="2">ì ì</option>
								<option value="3">ì¶íì¬</option>
								<option value="4">ISBN</option>
							</select> <input class="form-control" id="search_input" type="text"
								style="height: 50px; border: none; width: 55%;"
								placeholder="Search here..." aria-label="Search">
							<button type="button" class="fa fa-search search_button"
								onclick="search_click();"></button>
							<script>
								function search_click() {
									var sh = document
											.getElementById("select_type");
									var tt = document
											.getElementById("search_input");
									sh.value = sh.options[sh.selectedIndex].value;

									location.href = ("search.html?type:"
											+ sh.value + "&input:" + tt.value);
								}
							</script>
							<!-- íì js ëë jsp íì¼ë¡ ì°ê²° ì type=submit onclick="location.href='ì£¼ì'" ì¶ê°í´ì¼í¨. -->
						</div>
					</form>
				</div>
			</div>
			<img src="<%=cp%>/resources/images/slide1.jpg">
		</div>
	</div>


	<section class="recomended-sec">
		<div class="container">
			<div class="title">
				<h2>ì´ ë¬ì ì¶ì² ëì</h2>
				<hr>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="item">
						<img src="<%=cp%>/resources/images/img1.jpg" alt="img">
						<h3>how to be a bwase</h3>
						<div class="hover">
							<a href="product-single.html"> <span><i
									class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="item">
						<img src="<%=cp%>/resources/images/img2.jpg" alt="img">
						<h3>How to write a book...</h3>
						<div class="hover">
							<a href="product-single.html"> <span><i
									class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="item">
						<img src="<%=cp%>/resources/images/img3.jpg" alt="img">
						<h3>7-day self publish...</h3>
						<div class="hover">
							<a href="product-single.html"> <span><i
									class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="item">
						<img src="<%=cp%>/resources/images/img4.jpg" alt="img">
						<h3>wendy doniger</h3>
						<div class="hover">
							<a href="product-single.html"> <span><i
									class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="address">
						<h4>Footer ..</h4>
						<h6>LIS</h6>
						<h6>- blank -</h6>
						<h6>- blank -</h6>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h5>(C) 2017. All Rights Reserved. BookStore Wordpress Theme</h5>
					</div>
					<div class="col-md-6">
						<div class="share align-middle">
							<span class="fb"><i class="fa fa-facebook-official"></i></span> <span
								class="instagram"><i class="fa fa-instagram"></i></span> <span
								class="twitter"><i class="fa fa-twitter"></i></span> <span
								class="pinterest"><i class="fa fa-pinterest"></i></span> <span
								class="google"><i class="fa fa-google-plus"></i></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

</body>

</html>
