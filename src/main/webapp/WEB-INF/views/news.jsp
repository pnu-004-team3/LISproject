<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>News</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Bluesky template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/styles/bootstrap4/bootstrap.min.css">
<link href="<%=cp%>/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/plugins/rangeslider.js-2.3.0/rangeslider.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/styles/news.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/resources/styles/news_responsive.css">
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
								<li><a href="<%=cp%>/properties">Properties</a></li>
								<li class="active"><a href="<%=cp%>/news">News</a></li>
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
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="<%=cp%>/resources/images/news.jpg" data-speed="0.8"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content d-flex flex-row align-items-end justify-content-start">
							<div class="home_title">News</div>
							<div class="breadcrumbs ml-auto">
								<ul>
									<li><a href="<%=cp%>/resources/index.htmo">Home</a></li>
									<li>News</li>
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

	<!-- News -->

	<div class="news">
		<div class="container">
			<div class="row">

				<!-- News Posts -->
				<div class="col-lg-8">
					<div class="news_posts">

						<!-- News Post -->
						<div class="news_post">
							<div class="news_post_title_container d-flex flex-row align-items-center justify-content-start">
								<div><div class="news_post_date_container d-flex flex-column align-items-center justify-content-center">
									<div class="news_post_day">15</div>
									<div class="news_post_month">Apr '18</div>
								</div></div>
								<div class="news_post_title_content">
									<div class="news_post_title"><a href="<%=cp%>/resources/#">How to invest in real estate?</a></div>
									<div class="news_post_info">
										<ul>
											<li>By <a href="<%=cp%>/resources/#">James Morrison</a></li>
											<li>in <a href="<%=cp%>/resources/#">Real Estate</a></li>
											<li><a href="<%=cp%>/resources/#">3 Comments</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="news_post_image"><img src="<%=cp%>/resources/images/news_1.jpg" alt=""></div>
							<div class="news_post_text">
								<p>Donec ullamcorper nulla non metus auctor fringi lla. Curabitur blandit tempus porttitor.Sed lectus urna, ultricies sit amet risus eget, euismod imperdiet augue. Duis imperdiet, purus a pellentesque sodales, sapien mauris rhoncus eros, ac blandit elit leo ac diam.</p>
							</div>
						</div>

						<!-- News Post -->
						<div class="news_post">
							<div class="news_post_title_container d-flex flex-row align-items-center justify-content-start">
								<div><div class="news_post_date_container d-flex flex-column align-items-center justify-content-center">
									<div class="news_post_day">15</div>
									<div class="news_post_month">Apr '18</div>
								</div></div>
								<div class="news_post_title_content">
									<div class="news_post_title"><a href="<%=cp%>/resources/#">The best 10 cities to buy a house</a></div>
									<div class="news_post_info">
										<ul>
											<li>By <a href="<%=cp%>/resources/#">James Morrison</a></li>
											<li>in <a href="<%=cp%>/resources/#">Real Estate</a></li>
											<li><a href="<%=cp%>/resources/#">3 Comments</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="news_post_image"><img src="<%=cp%>/resources/images/news_2.jpg" alt=""></div>
							<div class="news_post_text">
								<p>Donec ullamcorper nulla non metus auctor fringi lla. Curabitur blandit tempus porttitor.Sed lectus urna, ultricies sit amet risus eget, euismod imperdiet augue. Duis imperdiet, purus a pellentesque sodales, sapien mauris rhoncus eros, ac blandit elit leo ac diam.</p>
							</div>
						</div>

						<!-- News Post -->
						<div class="news_post">
							<div class="news_post_title_container d-flex flex-row align-items-center justify-content-start">
								<div><div class="news_post_date_container d-flex flex-column align-items-center justify-content-center">
									<div class="news_post_day">15</div>
									<div class="news_post_month">Apr '18</div>
								</div></div>
								<div class="news_post_title_content">
									<div class="news_post_title"><a href="<%=cp%>/resources/#">5 Tips for a vacation home</a></div>
									<div class="news_post_info">
										<ul>
											<li>By <a href="<%=cp%>/resources/#">James Morrison</a></li>
											<li>in <a href="<%=cp%>/resources/#">Real Estate</a></li>
											<li><a href="<%=cp%>/resources/#">3 Comments</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="news_post_image"><img src="<%=cp%>/resources/images/news_3.jpg" alt=""></div>
							<div class="news_post_text">
								<p>Donec ullamcorper nulla non metus auctor fringi lla. Curabitur blandit tempus porttitor.Sed lectus urna, ultricies sit amet risus eget, euismod imperdiet augue. Duis imperdiet, purus a pellentesque sodales, sapien mauris rhoncus eros, ac blandit elit leo ac diam.</p>
							</div>
						</div>

					</div>

					<!-- Pagination -->
					<div class="pagination">
						<ul>
							<li class="active"><a href="<%=cp%>/resources/#">01.</a></li>
							<li><a href="<%=cp%>/resources/#">02.</a></li>
							<li><a href="<%=cp%>/resources/#">03.</a></li>
							<li><a href="<%=cp%>/resources/#">04.</a></li>
						</ul>
					</div>
				</div>

				<!-- Sidebar -->
				<div class="col-lg-4">
					<div class="sidebar">

						<!-- Search -->
						<div class="sidebar_top_search">
							<form action="#" class="sidebar_top_search_form">
								<input type="text" class="sidebar_top_search_input" placeholder="Search" required="required">
								<button class="sidebar_top_search_button"><i class="fa fa-search" aria-hidden="true"></i></button>
							</form>
						</div>

						<!-- Categories -->
						<div class="categories">
							<div class="sidebar_title">Categories</div>
							<div class="categories_list">
								<ul>
									<li><a href="<%=cp%>/resources/#" class="d-flex flex-row align-items-start justfy-content-start">
										<div>Real Estate</div>
										<div class="ml-auto">20</div>
									</a></li>
									<li><a href="<%=cp%>/resources/#" class="d-flex flex-row align-items-start justfy-content-start">
										<div>Properties</div>
										<div class="ml-auto">33</div>
									</a></li>
									<li><a href="<%=cp%>/resources/#" class="d-flex flex-row align-items-start justfy-content-start">
										<div>Selling Information</div>
										<div class="ml-auto">44</div>
									</a></li>
									<li><a href="<%=cp%>/resources/#" class="d-flex flex-row align-items-start justfy-content-start">
										<div>Vacation homes</div>
										<div class="ml-auto">52</div>
									</a></li>
									<li><a href="<%=cp%>/resources/#" class="d-flex flex-row align-items-start justfy-content-start">
										<div>Uncategorized</div>
										<div class="ml-auto">12</div>
									</a></li>
								</ul>
							</div>
						</div>

						<!-- Latest Posts -->
						<div class="sidebar_latest">
							<div class="sidebar_title">Latest Posts</div>
							<div class="sidebar_latest_posts">

								<!-- Recent Post -->
								<div class="latest_post d-flex flex-row align-items-start justify-content-start">
									<div><div class="latest_post_image"><img src="<%=cp%>/resources/images/latest_1.jpg" alt=""></div></div>
									<div class="latest_post_content">
										<div class="latest_post_date"><a href="<%=cp%>/resources/#">April 02, 2018</a></div>
										<div class="latest_post_title"><a href="<%=cp%>/resources/#">How to choose a house?</a></div>
										<div class="latest_post_author">By <a href="<%=cp%>/resources/#">William Smith</a></div>
									</div>
								</div>

								<!-- Recent Post -->
								<div class="latest_post d-flex flex-row align-items-start justify-content-start">
									<div><div class="latest_post_image"><img src="<%=cp%>/resources/images/latest_2.jpg" alt=""></div></div>
									<div class="latest_post_content">
										<div class="latest_post_date"><a href="<%=cp%>/resources/#">April 02, 2018</a></div>
										<div class="latest_post_title"><a href="<%=cp%>/resources/#">How to spot bargains</a></div>
										<div class="latest_post_author">By <a href="<%=cp%>/resources/#">William Smith</a></div>
									</div>
								</div>

								<!-- Recent Post -->
								<div class="latest_post d-flex flex-row align-items-start justify-content-start">
									<div><div class="latest_post_image"><img src="<%=cp%>/resources/images/latest_3.jpg" alt=""></div></div>
									<div class="latest_post_content">
										<div class="latest_post_date"><a href="<%=cp%>/resources/#">April 02, 2018</a></div>
										<div class="latest_post_title"><a href="<%=cp%>/resources/#">3 Tips to get a bargain on a home</a></div>
										<div class="latest_post_author">By <a href="<%=cp%>/resources/#">William Smith</a></div>
									</div>
								</div>

								<!-- Recent Post -->
								<div class="latest_post d-flex flex-row align-items-start justify-content-start">
									<div><div class="latest_post_image"><img src="<%=cp%>/resources/images/latest_4.jpg" alt=""></div></div>
									<div class="latest_post_content">
										<div class="latest_post_date"><a href="<%=cp%>/resources/#">April 02, 2018</a></div>
										<div class="latest_post_title"><a href="<%=cp%>/resources/#">The best cities to own a house</a></div>
										<div class="latest_post_author">By <a href="<%=cp%>/resources/#">William Smith</a></div>
									</div>
								</div>

							</div>
						</div>

						<!-- Sidebar Search -->
						<div class="sidebar_search">
							<div class="sidebar_search_title">Search your home</div>
							<div class="sidebar_search_form_container">
								<form action="#" class="sidebar_search_form" id="sidebar_search_form">
									<select class="sidebar_search_select">
										<option disabled selected>Keywords</option>
										<option>Option</option>
										<option>Option</option>
										<option>Option</option>
										<option>Option</option>
									</select>
									<select class="sidebar_search_select">
										<option disabled selected>Property ID</option>
										<option>Option</option>
										<option>Option</option>
										<option>Option</option>
										<option>Option</option>
									</select>
									<select class="sidebar_search_select">
										<option disabled selected>Property Status</option>
										<option>Option</option>
										<option>Option</option>
										<option>Option</option>
										<option>Option</option>
									</select>
									<select class="sidebar_search_select">
										<option disabled selected>City</option>
										<option>Option</option>
										<option>Option</option>
										<option>Option</option>
										<option>Option</option>
									</select>
									<select class="sidebar_search_select">
										<option disabled selected>Property Type</option>
										<option>Option</option>
										<option>Option</option>
										<option>Option</option>
										<option>Option</option>
									</select>
									<div class="row sidebar_search_row">
										<div class="col-lg-6">
											<input type="text" class="sidebar_search_input" placeholder="Bedrooms No">
										</div>
										<div class="col-lg-6">
											<input type="text" class="sidebar_search_input" placeholder="Bathrooms No">
										</div>
									</div>

									<!-- Filter Price -->
									<div class="price_filter">
										<div class="price_filter_values d-flex flex-row align-items-center justfy-content-start">
											<div>Min Price</div>
											<div class="ml-auto">Max Price</div>
										</div>
										<input type="range" min="0" max="1000" step="10" value="250" data-rangeslider="" style="position: absolute; width: 1px; height: 1px; overflow: hidden; opacity: 0;">
									</div>

									<!-- Filter Area -->
									<div class="area_filter">
										<div class="price_filter_values d-flex flex-row align-items-center justfy-content-start">
											<div>Min Price</div>
											<div class="ml-auto">Max Price</div>
										</div>
										<input type="range" min="0" max="1000" step="10" value="300" data-rangeslider="" style="position: absolute; width: 1px; height: 1px; overflow: hidden; opacity: 0;">
									</div>
									<button class="sidebar_search_button_2 search_form_button_2">search</button>
								</form>
							</div>
						</div>
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
<script src="<%=cp%>/resources/plugins/easing/easing.js"></script>
<script src="<%=cp%>/resources/plugins/rangeslider.js-2.3.0/rangeslider.min.js"></script>
<script src="<%=cp%>/resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="<%=cp%>/resources/js/news.js"></script>
</body>
</html>