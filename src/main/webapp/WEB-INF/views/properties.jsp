<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Properties</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Bluesky template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/styles/bootstrap4/bootstrap.min.css">
<link href="<%=cp%>/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/styles/properties.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/styles/properties_responsive.css">
</head>
<body>

<div class="super_container">

	<!-- Header -->

	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="header_content d-flex flex-row align-items-center justify-content-start">
						<div class="logo">
							<a href="<%=cp%>/resources/#"><img src="<%=cp%>/resources/images/logo.png" alt=""></a>
						</div>
						<nav class="main_nav">
							<ul>
								<li><a href="<%=cp%>/index">Home</a></li>
								<li><a href="<%=cp%>/about">About us</a></li>
								<li class="active"><a href="<%=cp%>/properties">Properties</a></li>
								<li><a href="<%=cp%>/news">News</a></li>
								<li><a href="<%=cp%>/contact">Contact</a></li>
							</ul>
						</nav>
						<div class="phone_num ml-auto">
							<div class="phone_num_inner">
								<img src="<%=cp%>/resources/images/phone.png" alt=""><span>652-345 3222 11</span>
							</div>
						</div>
						<div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Menu -->

	<div class="menu trans_500">
		<div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
			<div class="menu_close_container"><div class="menu_close"></div></div>
			<div class="logo menu_logo">
				<a href="<%=cp%>/resources/#">
					<div class="logo_container d-flex flex-row align-items-start justify-content-start">
						<div class="logo_image"><div><img src="<%=cp%>/resources/images/logo.png" alt=""></div></div>
					</div>
				</a>
			</div>
			<ul>
				<li class="menu_item"><a href="<%=cp%>/index">Home</a></li>
				<li class="menu_item"><a href="<%=cp%>/about">About us</a></li>
				<li class="menu_item"><a href="<%=cp%>/#">Speakers</a></li>
				<li class="menu_item"><a href="<%=cp%>/#">Tickets</a></li>
				<li class="menu_item"><a href="<%=cp%>/news">News</a></li>
				<li class="menu_item"><a href="<%=cp%>/contact">Contact</a></li>
			</ul>
		</div>
		<div class="menu_phone"><span>call us: </span>652 345 3222 11</div>
	</div>
	
	<!-- Home -->

	<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="<%=cp%>/resources/images/properties.jpg" data-speed="0.8"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content d-flex flex-row align-items-end justify-content-start">
							<div class="home_title">Search results</div>
							<div class="breadcrumbs ml-auto">
								<ul>
									<li><a href="<%=cp%>/resources/index.htmo">Home</a></li>
									<li>Search Results</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Home Search -->
	<div class="home_search">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<div class="home_search_content">
							<form action="#" class="search_form d-flex flex-row align-items-start justfy-content-start">
								<div class="search_form_content d-flex flex-row align-items-start justfy-content-start flex-wrap">
									<div>
										<select class="search_form_select">
											<option disabled selected>For rent</option>
											<option>Yes</option>
											<option>No</option>
										</select>
									</div>
									<div>
										<select class="search_form_select">
											<option disabled selected>All types</option>
											<option>Type 1</option>
											<option>Type 2</option>
											<option>Type 3</option>
											<option>Type 4</option>
										</select>
									</div>
									<div>
										<select class="search_form_select">
											<option disabled selected>City</option>
											<option>New York</option>
											<option>Paris</option>
											<option>Amsterdam</option>
											<option>Rome</option>
										</select>
									</div>
									<div>
										<select class="search_form_select">
											<option disabled selected>Bedrooms</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
										</select>
									</div>
									<div>
										<select class="search_form_select">
											<option disabled selected>Bathrooms</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
										</select>
									</div>
								</div>
								<button class="search_form_button ml-auto">search</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Properties -->

	<div class="properties">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title">25 Properties found</div>
					<div class="section_subtitle">Search your dream home</div>
				</div>
			</div>
			<div class="row properties_row">
				
				<!-- Property -->
				<div class="col-xl-4 col-lg-6 property_col">
					<div class="property">
						<div class="property_image">
							<img src="<%=cp%>/resources/images/property_1.jpg" alt="">
							<div class="tag_featured property_tag"><a href="<%=cp%>/resources/#">Featured</a></div>
						</div>
						<div class="property_body text-center">
							<div class="property_location">Miami</div>
							<div class="property_title"><a href="<%=cp%>/resources/property.jsp">Sea view property</a></div>
							<div class="property_price">$ 1. 234 981</div>
						</div>
						<div class="property_footer d-flex flex-row align-items-center justify-content-start">
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_1.png" alt=""></div><span>650 Ftsq</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_2.png" alt=""></div><span>3 Bedrooms</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_3.png" alt=""></div><span>3 Bathrooms</span></div>
						</div>
					</div>
				</div>

				<!-- Property -->
				<div class="col-xl-4 col-lg-6 property_col">
					<div class="property">
						<div class="property_image">
							<img src="<%=cp%>/resources/images/property_2.jpg" alt="">
							<div class="tag_offer property_tag"><a href="<%=cp%>/resources/#">Offer</a></div>
						</div>
						<div class="property_body text-center">
							<div class="property_location">Los Angeles</div>
							<div class="property_title"><a href="<%=cp%>/resources/property.jsp">2 Floor Town House</a></div>
							<div class="property_price">$ 1. 234 981</div>
						</div>
						<div class="property_footer d-flex flex-row align-items-center justify-content-start">
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_1.png" alt=""></div><span>650 Ftsq</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_2.png" alt=""></div><span>3 Bedrooms</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_3.png" alt=""></div><span>3 Bathrooms</span></div>
						</div>
					</div>
				</div>

				<!-- Property -->
				<div class="col-xl-4 col-lg-6 property_col">
					<div class="property">
						<div class="property_image">
							<img src="<%=cp%>/resources/images/property_3.jpg" alt="">
							<div class="tag_featured property_tag"><a href="<%=cp%>/resources/#">Featured</a></div>
						</div>
						<div class="property_body text-center">
							<div class="property_location">Florida</div>
							<div class="property_title"><a href="<%=cp%>/resources/property.jsp">Vacation Home</a></div>
							<div class="property_price">$ 1. 234 981</div>
						</div>
						<div class="property_footer d-flex flex-row align-items-center justify-content-start">
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_1.png" alt=""></div><span>650 Ftsq</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_2.png" alt=""></div><span>3 Bedrooms</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_3.png" alt=""></div><span>3 Bathrooms</span></div>
						</div>
					</div>
				</div>

				<!-- Property -->
				<div class="col-xl-4 col-lg-6 property_col">
					<div class="property">
						<div class="property_image">
							<img src="<%=cp%>/resources/images/property_4.jpg" alt="">
							<div class="tag_new property_tag"><a href="<%=cp%>/resources/#">New</a></div>
						</div>
						<div class="property_body text-center">
							<div class="property_location">Miami</div>
							<div class="property_title"><a href="<%=cp%>/resources/property.jsp">Sea view property</a></div>
							<div class="property_price">$ 1. 234 981</div>
						</div>
						<div class="property_footer d-flex flex-row align-items-center justify-content-start">
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_1.png" alt=""></div><span>650 Ftsq</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_2.png" alt=""></div><span>3 Bedrooms</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_3.png" alt=""></div><span>3 Bathrooms</span></div>
						</div>
					</div>
				</div>

				<!-- Property -->
				<div class="col-xl-4 col-lg-6 property_col">
					<div class="property">
						<div class="property_image">
							<img src="<%=cp%>/resources/images/property_5.jpg" alt="">
						</div>
						<div class="property_body text-center">
							<div class="property_location">New York</div>
							<div class="property_title"><a href="<%=cp%>/resources/property.jsp">Sea view property</a></div>
							<div class="property_price">$ 1. 234 981</div>
						</div>
						<div class="property_footer d-flex flex-row align-items-center justify-content-start">
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_1.png" alt=""></div><span>650 Ftsq</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_2.png" alt=""></div><span>3 Bedrooms</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_3.png" alt=""></div><span>3 Bathrooms</span></div>
						</div>
					</div>
				</div>

				<!-- Property -->
				<div class="col-xl-4 col-lg-6 property_col">
					<div class="property">
						<div class="property_image">
							<img src="<%=cp%>/resources/images/property_6.jpg" alt="">
						</div>
						<div class="property_body text-center">
							<div class="property_location">Miami</div>
							<div class="property_title"><a href="<%=cp%>/resources/property.jsp">Sea view property</a></div>
							<div class="property_price">$ 1. 234 981</div>
						</div>
						<div class="property_footer d-flex flex-row align-items-center justify-content-start">
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_1.png" alt=""></div><span>650 Ftsq</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_2.png" alt=""></div><span>3 Bedrooms</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_3.png" alt=""></div><span>3 Bathrooms</span></div>
						</div>
					</div>
				</div>

				<!-- Property -->
				<div class="col-xl-4 col-lg-6 property_col">
					<div class="property">
						<div class="property_image">
							<img src="<%=cp%>/resources/images/property_7.jpg" alt="">
							<div class="tag_new property_tag"><a href="<%=cp%>/resources/#">New</a></div>
						</div>
						<div class="property_body text-center">
							<div class="property_location">Miami</div>
							<div class="property_title"><a href="<%=cp%>/resources/property.jsp">Sea view property</a></div>
							<div class="property_price">$ 1. 234 981</div>
						</div>
						<div class="property_footer d-flex flex-row align-items-center justify-content-start">
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_1.png" alt=""></div><span>650 Ftsq</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_2.png" alt=""></div><span>3 Bedrooms</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_3.png" alt=""></div><span>3 Bathrooms</span></div>
						</div>
					</div>
				</div>

				<!-- Property -->
				<div class="col-xl-4 col-lg-6 property_col">
					<div class="property">
						<div class="property_image">
							<img src="<%=cp%>/resources/images/property_8.jpg" alt="">
						</div>
						<div class="property_body text-center">
							<div class="property_location">San Francisco</div>
							<div class="property_title"><a href="<%=cp%>/resources/property.jsp">Sea view property</a></div>
							<div class="property_price">$ 1. 234 981</div>
						</div>
						<div class="property_footer d-flex flex-row align-items-center justify-content-start">
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_1.png" alt=""></div><span>650 Ftsq</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_2.png" alt=""></div><span>3 Bedrooms</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_3.png" alt=""></div><span>3 Bathrooms</span></div>
						</div>
					</div>
				</div>

				<!-- Property -->
				<div class="col-xl-4 col-lg-6 property_col">
					<div class="property">
						<div class="property_image">
							<img src="<%=cp%>/resources/images/property_9.jpg" alt="">
						</div>
						<div class="property_body text-center">
							<div class="property_location">Miami</div>
							<div class="property_title"><a href="<%=cp%>/resources/property.jsp">Sea view property</a></div>
							<div class="property_price">$ 1. 234 981</div>
						</div>
						<div class="property_footer d-flex flex-row align-items-center justify-content-start">
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_1.png" alt=""></div><span>650 Ftsq</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_2.png" alt=""></div><span>3 Bedrooms</span></div>
							<div><div class="property_icon"><img src="<%=cp%>/resources/images/icon_3.png" alt=""></div><span>3 Bathrooms</span></div>
						</div>
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col">
					<div class="pagination">
						<ul>
							<li class="active"><a href="<%=cp%>/resources/#">01.</a></li>
							<li><a href="<%=cp%>/resources/#">02.</a></li>
							<li><a href="<%=cp%>/resources/#">03.</a></li>
							<li><a href="<%=cp%>/resources/#">04.</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Newsletter -->

	<div class="newsletter">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="<%=cp%>/resources/images/newsletter.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="newsletter_content d-flex flex-lg-row flex-column align-items-start justify-content-start">
						<div class="newsletter_title_container">
							<div class="newsletter_title">Are you buying or selling?</div>
							<div class="newsletter_subtitle">Search your dream home</div>
						</div>
						<div class="newsletter_form_container">
							<form action="#" class="newsletter_form">
								<input type="email" class="newsletter_input" placeholder="Your e-mail address" required="required">
								<button class="newsletter_button">subscribe now</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="footer_main">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="footer_logo"><a href="<%=cp%>/resources/#"><img src="<%=cp%>/resources/images/logo_large.png" alt=""></a></div>
					</div>
					<div class="col-lg-9 d-flex flex-column align-items-start justify-content-end">
						<div class="footer_title">Latest Properties</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3 footer_col">
						<div class="footer_about">
							<div class="footer_about_text">Donec in tempus leo. Aenean ultricies mauris sed quam lacinia lobortis. Cras ut vestibulum enim, in gravida nulla. Curab itur ornare nisl at sagittis cursus.</div>
						</div>
					</div>
					<div class="col-lg-3 footer_col">
						<div class="footer_latest d-flex flex-row align-items-start justify-content-start">
							<div><div class="footer_latest_image"><img src="<%=cp%>/resources/images/footer_latest_1.jpg" alt=""></div></div>
							<div class="footer_latest_content">
								<div class="footer_latest_location">Miami</div>
								<div class="footer_latest_name"><a href="<%=cp%>/resources/#">Sea view property</a></div>
								<div class="footer_latest_price">$ 1. 234 981</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 footer_col">
						<div class="footer_latest d-flex flex-row align-items-start justify-content-start">
							<div><div class="footer_latest_image"><img src="<%=cp%>/resources/images/footer_latest_2.jpg" alt=""></div></div>
							<div class="footer_latest_content">
								<div class="footer_latest_location">Miami</div>
								<div class="footer_latest_name"><a href="<%=cp%>/resources/#">Town House</a></div>
								<div class="footer_latest_price">$ 1. 234 981</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 footer_col">
						<div class="footer_latest d-flex flex-row align-items-start justify-content-start">
							<div><div class="footer_latest_image"><img src="<%=cp%>/resources/images/footer_latest_3.jpg" alt=""></div></div>
							<div class="footer_latest_content">
								<div class="footer_latest_location">Miami</div>
								<div class="footer_latest_name"><a href="<%=cp%>/resources/#">Modern House</a></div>
								<div class="footer_latest_price">$ 1. 234 981</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer_bar">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="footer_bar_content d-flex flex-row align-items-center justify-content-start">
							<div class="cr"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="<%=cp%>/resources/https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</div>
							<div class="footer_nav">
								<ul>
									<li><a href="<%=cp%>/resources/index.jsp">Home</a></li>
									<li><a href="<%=cp%>/resources/#">About us</a></li>
									<li><a href="<%=cp%>/resources/properties.jsp">Properties</a></li>
									<li><a href="<%=cp%>/resources/news.jsp">News</a></li>
									<li><a href="<%=cp%>/resources/contact.jsp">Contact</a></li>
								</ul>
							</div>
							<div class="footer_phone ml-auto"><span>call us: </span>652 345 3222 11</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>

<script src="<%=cp%>/resources/js/jquery-3.2.1.min.js"></script>
<script src="<%=cp%>/resources/styles/bootstrap4/popper.js"></script>
<script src="<%=cp%>/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="<%=cp%>/resources/plugins/greensock/TweenMax.min.js"></script>
<script src="<%=cp%>/resources/plugins/greensock/TimelineMax.min.js"></script>
<script src="<%=cp%>/resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="<%=cp%>/resources/plugins/greensock/animation.gsap.min.js"></script>
<script src="<%=cp%>/resources/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="<%=cp%>/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="<%=cp%>/resources/plugins/easing/easing.js"></script>
<script src="<%=cp%>/resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="<%=cp%>/resources/js/properties.js"></script>
</body>
</html>