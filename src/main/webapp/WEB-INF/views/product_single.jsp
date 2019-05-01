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
				class="breadcrumb-item active"> 도서 상세 정보 </span>
		</div>
	</div>
	<section class="product-sec">
		<div class="container">
			<h1>--- 가져올 도서 명 ---</h1>
			<div class="row">
				<div class="col-md-6 slider-sec">
					<!-- main slider carousel -->
					<div id="myCarousel" class="carousel slide">
						<!-- main slider carousel items -->
						<div class="carousel-inner">
							<div class="active item carousel-item" data-slide-number="0">
								<img src="<%=cp%>/resources/images/product1.jpg" class="img-fluid">
							</div>
							<div class="item carousel-item" data-slide-number="1">
								<img src="<%=cp%>/resources/images/product2.jpg" class="img-fluid">
							</div>
							<div class="item carousel-item" data-slide-number="2">
								<img src="<%=cp%>/resources/images/product3.jpg" class="img-fluid">
							</div>
						</div>
						<!-- main slider carousel nav controls -->
					</div>
					<!--/main slider carousel-->
				</div>
				<div class="col-md-6 slider-content">
					<ul>
                        <li>
                            <span class="name"> 도서 명</span><span class="clm">:</span>
                            <span class="book_name book_info"> -- 책 제목 가져오기 -- </span>
                        </li>
                        <li>
                            <span class="name"> 도서 유형 </span><span class="clm">:</span>
                            <span class="book_type book_info"> -- 도서 유형 가져오기 -- </span>
                        </li>
                        <li>
                            <span class="name"> 저자 </span><span class="clm">:</span>
                            <span class="book_author book_info"> -- 저자 가져오기 -- </span>
                        </li>
                        <li>
                            <span class="name"> 출판사 </span><span class="clm">:</span>
                            <span class="book_publish book_info"> -- 출판사 가져오기 -- </span>
                        </li>
                        <li>
                            <span class="name"> ISBN </span><span class="clm">:</span>
                            <span class="book_state book_info"> ISBN 번호 </span>
                        </li>
                        
                        <li>
                            <span class="name"> 대출 현황 </span><span class="clm">:</span>
                            <span class="book_state book_info"> -- 도서 현재 상황 -- </span>
                        </li>
                    </ul>
                    <div class="btn-sec">
                        <button class="btn "> 대출 신청 </button>
                        <button class="btn black">예약 신청</button>
                    </div>
                </div>
			</div>
		</div>
	</section>

	<!--
    <section class="related-books">
        <div class="container">
            <h2>You may also like these book</h2>
            <div class="recomended-sec">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <img src="<%=cp%>/resources/images/img1.jpg" alt="img">
                            <h3>how to be a bwase</h3>
                            <h6><span class="price">$49</span> / <a href="<%=cp%>/#">Buy Now</a></h6>
                            <div class="hover">
                                <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <img src="<%=cp%>/resources/images/img2.jpg" alt="img">
                            <h3>How to write a book...</h3>
                            <h6><span class="price">$19</span> / <a href="<%=cp%>/#">Buy Now</a></h6>
                            <span class="sale">Sale !</span>
                            <div class="hover">
                                <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <img src="<%=cp%>/resources/images/img3.jpg" alt="img">
                            <h3>7-day self publish...</h3>
                            <h6><span class="price">$49</span> / <a href="<%=cp%>/#">Buy Now</a></h6>
                            <div class="hover">
                                <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <img src="<%=cp%>/resources/images/img4.jpg" alt="img">
                            <h3>wendy doniger</h3>
                            <h6><span class="price">$49</span> / <a href="<%=cp%>/#">Buy Now</a></h6>
                            <div class="hover">
                                <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
     -->
<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>


</html>