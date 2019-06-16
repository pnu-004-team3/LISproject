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
      <a class="breadcrumb-item" href="<%=cp%>/index">Home</a>
      <span class="breadcrumb-item active">My Library</span>
    </div>
  </div>
  <section class="static about-sec">
    <div class="container">
      <h1>관리자 메인 페이지</h1>
      <header class="section-title">
        <h3><a href="<%=cp%>/ModifyAdmin">관리자 정보수정</a></h3>
      </header>
      <div class="section-body">
        <p>관리자가 자신의 정보를 수정할 수 있다.</p>
      </div>
      <header class="section-title">
        <h3><a href="<%=cp%>/AdminUser">회원 정보수정</a></h3>
      </header>
      <div class="section-body">
        <p>관리자가 회원 정보를 검색하고 확인할 수 있다.</p>
      </div>
      <header class="section-title">
        <h3><a href="<%=cp%>/manager_rent_return">대출/반납/예약 관리</a></h3>
      </header>
      <div class="section-body">
        <p>대출/반납 현황을 조회하고 예약자를 확인할 수 있다.</p>
        <p>대출 정지 이용자를 확인할 수 있고, 연체 및 미납자를 검색할 수 있다.</p>
      </div>
      <header class="section-title">
        <h3><a href="<%=cp%>/manager_booklist">소장 도서 관리</a></h3>
      </header>
      <div class="section-body">
        <p>현재 도서관에서 소장하고 있는 도서를 관리한다</p>
      </div>
      <header class="section-title">
        <h3><a href="<%=cp%>/manager_book_register">신규도서 등록</a></h3>
      </header>
      <div class="section-body">
        <p>Database에 새로운 도서를 추가할 수 있다.</p>
      </div>
      <header class="section-title">
        <h3><a href="<%=cp%>/manager_monitoring">관리자 모니터링</a></h3>
      </header>
      <div class="section-body">
        <p>관리자가 인포그래픽을 통한 이용자 통계를 확인할 수 있다.</p>
      </div>

    </div>
  </section>
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="address">
            <h4>Our Address</h4>
            <h6>The BookStore Theme, 4th Store
              Beside that building, USA</h6>
            <h6>Call : 800 1234 5678</h6>
            <h6>Email : info@bookstore.com</h6>
          </div>
          <div class="timing">
            <h4>Timing</h4>
            <h6>Mon - Fri: 7am - 10pm</h6>
            <h6>ââSaturday: 8am - 10pm</h6>
            <h6>âSunday: 8am - 11pm</h6>
          </div>
        </div>
        <div class="col-md-3">
          <div class="navigation">
            <h4>Navigation</h4>
            <ul>
              <li><a href="<%=cp%>/index">Home</a></li>
              <li><a href="<%=cp%>/about">About Us</a></li>
              <li><a href="<%=cp%>/privacy-policy">Privacy Policy</a></li>
              <li><a href="<%=cp%>/terms-conditions">Terms</a></li>
              <li><a href="<%=cp%>/products">Products</a></li>
            </ul>
          </div>
          <div class="navigation">
            <h4>Help</h4>
            <ul>
              <li><a href="<%=cp%>/">Shipping & Returns</a></li>
              <li><a href="<%=cp%>/privacy-policy">Privacy</a></li>
              <li><a href="<%=cp%>/faq">FAQâs</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-5">
          <div class="form">
            <h3>Quick Contact us</h3>
            <h6>We are now offering some good discount
              on selected books go and shop them</h6>
            <form>
              <div class="row">
                <div class="col-md-6">
                  <input placeholder="Name" required>
                </div>
                <div class="col-md-6">
                  <input type="email" placeholder="Email" required>
                </div>
                <div class="col-md-12">
                  <textarea placeholder="Messege"></textarea>
                </div>
                <div class="col-md-12">
                  <button class="btn black">Alright, Submit</button>
                </div>
              </div>
            </form>
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
              <span class="fb"><i class="fa fa-facebook-official"></i></span>
              <span class="instagram"><i class="fa fa-instagram"></i></span>
              <span class="twitter"><i class="fa fa-twitter"></i></span>
              <span class="pinterest"><i class="fa fa-pinterest"></i></span>
              <span class="google"><i class="fa fa-google-plus"></i></span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <script src="<%=cp%>/resources/js/jquery.min.js"></script>
  <script src="<%=cp%>/resources/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="<%=cp%>/resources/js/owl.carousel.min.js"></script>
  <script src="<%=cp%>/resources/js/custom.js"></script>
</body>


<!-- Footer -->

<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>
