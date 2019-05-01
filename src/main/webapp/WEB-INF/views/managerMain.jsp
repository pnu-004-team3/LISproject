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
      <h1>ê´ë¦¬ì ë©ì¸ íì´ì§</h1>
      <header class="section-title">
        <h3><a href="<%=cp%>/">ê´ë¦¬ì ì ë³´ìì </a></h3>
      </header>
      <div class="section-body">
        <p>ê´ë¦¬ìê° ìì ì ì ë³´ë¥¼ ìì í  ì ìë¤.</p>
      </div>
      <header class="section-title">
        <h3><a href="<%=cp%>/">íì ì ë³´ìì </a></h3>
      </header>
      <div class="section-body">
        <p>ê´ë¦¬ìê° íì ì ë³´ë¥¼ ê²ìíê³  íì¸í  ì ìë¤.</p>
      </div>
      <header class="section-title">
        <h3><a href="<%=cp%>/manager_rent_return">ëì¶/ë°ë©/ìì½ ê´ë¦¬</a></h3>
      </header>
      <div class="section-body">
        <p>ëì¶/ë°ë© íí©ì ì¡°íí ìì½ìë¥¼ íì¸í  ì ìë¤.</p>
        <p>ëì¶ ì ì§ ì´ì©ìë¥¼ íì¸í  ì ìê³ , ì°ì²´ ë° ë¯¸ë©ìë¥¼ ê²ìí  ì ìë¤.</p>
      </div>
      <header class="section-title">
        <h3><a href="<%=cp%>/manager_booklist">ìì¥ ëì ê´ë¦¬</a></h3>
      </header>
      <div class="section-body">
        <p>íì¬ ëìê´ìì ìì¥íê³  ìë ëìë¥¼ ê´ë¦¬íë¤.</p>
      </div>
      <header class="section-title">
        <h3><a href="<%=cp%>/manager_book_register">ì ê·ëì ë±ë¡</a></h3>
      </header>
      <div class="section-body">
        <p>Databaseì ìë¡ì´ ëìë¥¼ ì¶ê°í  ì ìë¤.</p>
      </div>
      <header class="section-title">
        <h3><a href="<%=cp%>/manager_monitoring">ê´ë¦¬ì ëª¨ëí°ë§</a></h3>
      </header>
      <div class="section-body">
        <p>ê´ë¦¬ìê° ì¸í¬ê·¸ëí½ì íµí ì´ì©ì íµê³ë¥¼ íì¸í  ì ìë¤.</p>
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
