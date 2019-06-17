<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>도서 제목인식 검색 페이지</title>

<meta name="Description"
	content="Optical Character Recognition demo in JavaScript" />
<meta property="og:image"
	content="http://kdzwinel.github.io/JS-OCR-demo/img/process.png" />
<link rel="image_src"
	href="http://kdzwinel.github.io/JS-OCR-demo/img/process.png" />

<link rel="stylesheet"
	href="<%=cp%>/resources/OCR/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="<%=cp%>/resources/OCR/css/jquery.Jcrop.min.css" />
<link rel="stylesheet" href="<%=cp%>/resources/OCR/css/main.css" />
<link
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
</head>
<jsp:include page="/WEB-INF/views/header/home_header.jsp"></jsp:include>

<body class="step1">
	<jsp:include page="/WEB-INF/views/header/main_nav.jsp"></jsp:include>
	<div class="container">
		<div class="alert alert-danger">
			<strong>Oops!</strong> <span></span>
		</div>
		
		<div class="jumbotron">
			<div id="step1">
		
				<p class="lead">
					인식시킬 도서를 카메라에 가까이 대주세요. <i
							data-placement="bottom" data-content="<img src='img/step1.png' />"
						data-html="true"></i>
				</p>

				<figure class="not-ready">
					<video autoplay></video>
				</figure>

				<button class="btn btn-lg btn-success" disabled id="takePicture">사진찍기</button>
			</div>
			
			<div id="step2">
			
				<p class="lead">
					도서의 제목이 잘 보이도록 조도와 대조를 조절하고, 제목을 잘라주세요. <i
						class="glyphicon glyphicon-question-sign help"
						data-placement="bottom" data-content="<img src='img/step2.png' />"
						data-html="true"></i>
				</p>

				<figure>
					<canvas style="display: none"></canvas>
					<img src="" />
				</figure>

				<p>
					밝기: <input type="range" min="0" max="100" id="brightness"
						value="20">
				</p>

				<p>
					조도: <input type="range" min="0" max="100" id="contrast" value="90">
				</p>

				<button class="btn btn-lg btn-success" id="adjust" disabled>완료</button>
			</div>
			
			<div id="step3">
			
			
				<figure>
					<canvas></canvas>
				</figure>

				<blockquote>
					<div class="spinner">
						<div class="bounce1"></div>
						<div class="bounce2"></div>
						<div class="bounce3"></div>
					</div>
					<p id="result"></p>
					<footer></footer>
					
				</blockquote>
				
				<button class="btn btn-lg btn-default" id="go-back" style="margin-right:250px ; margin-top:50px ">돌아가기</button>
				
				<!--  <button class="btn btn-lg btn-default" id="start-over">Start over</button> -->
				<form method="post" action="<%=cp%>/booklist.do">


					<select style="display: none" name="searchOption"
						class="search_form_select">
						<option value="all" selected>통합검색</option>

					</select> <input style="display: none" class="form-control" name="keyword"
						value="${map.keyword}"
						style="height: 50px; border: none; width: 55%;"
						placeholder="Search here..." aria-label="Search">
				
					
					<button value="search" class="btn btn-lg btn-default" style="margin-top:50px "
						id="go-search" onclick="return setdata()">도서 검색</button>


				</form>


			</div>
		</div>

		<div class="header">
			<ul class="nav nav-pills pull-right">
				<li class="active"><a href="#" data-step="1">#1 <i
						class="glyphicon glyphicon-camera"></i></a></li>
				<li class="disabled"><a href="#" data-step="2">#2 <i
						class="glyphicon glyphicon-pencil"></i></a></li>
				<li class="disabled"><a href="#" data-step="3">#3 <i
						class="glyphicon glyphicon-text-height"></i></a></li>
			</ul>
			<h3 class="text-muted">도서 인식 시스템</h3>
		</div>



		<div class="footer"></div>

	</div>

	<!-- /container -->

	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="<%=cp%>/resources/OCR/js/vendor/modernizr.min.js"></script>
	<script src="<%=cp%>/resources/OCR/js/vendor/bootstrap.min.js"></script>
	<script src="<%=cp%>/resources/OCR/js/vendor/jquery.Jcrop.js"></script>
	<script
		src='https://cdn.jsdelivr.net/gh/naptha/tesseract.js@v1.0.14/dist/tesseract.min.js'></script>
	<script src="<%=cp%>/resources/OCR/js/vendor/glfx.min.js"></script>
	<script src="<%=cp%>/resources/OCR/js/main.js"></script>


	<script type="text/javascript">
		function setdata() {
			var text = $("#result").text()
			$("input[name=keyword]").val(text)
		}
	</script>

	<!-- Social -->
	<script>
		!function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/
					.test(d.location) ? 'http' : 'https';
			if (!d.getElementById(id)) {
				js = d.createElement(s);
				js.id = id;
				js.src = p + '://platform.twitter.com/widgets.js';
				fjs.parentNode.insertBefore(js, fjs);
			}
		}(document, 'script', 'twitter-wjs');
	</script>
	
	<script type="text/javascript">
		(function() {
			var po = document.createElement('script');
			po.type = 'text/javascript';
			po.async = true;
			po.src = 'https://apis.google.com/js/platform.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(po, s);
		})();
	</script>

	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	
	<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>
</html>
