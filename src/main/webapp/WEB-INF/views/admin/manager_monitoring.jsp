<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

<jsp:include page="/WEB-INF/views/header/manager_header.jsp"></jsp:include>



<body>
	<jsp:include page="/WEB-INF/views/header/main_nav.jsp"></jsp:include>
	
    
    <div class="breadcrumb">
        <div class="container">
            <a class="breadcrumb-item" href="index.html">Home</a>
            <span class="breadcrumb-item active">Login</span>
        </div>
    </div>
    <section class="static about-sec">
        <div class="container">
            <h1>관리자 모니터링</h1>
            <div class="milestones">
  <div class="elements_title">대출/연체/예약/연장 현황</div>
  <div class="row milestones_row">

    <!-- Milestone -->
    <div class="col-lg-3 milestone_col">
      <div class="milestone d-flex flex-row align-items-center justify-content-start">
        <div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="images/milestones_1.png" alt=""></div>
        <div class="milestone_content">
          <div class="milestone_counter" data-end-value="651">0</div>
          <div class="milestone_text">대출현황</div>
        </div>
      </div>
    </div>

    <!-- Milestone -->
    <div class="col-lg-3 milestone_col">
      <div class="milestone d-flex flex-row align-items-center justify-content-start">
        <div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="images/milestones_2.png" alt=""></div>
        <div class="milestone_content">
          <div class="milestone_counter" data-end-value="1256">0</div>
          <div class="milestone_text">연체현황</div>
        </div>
      </div>
    </div>

    <!-- Milestone -->
    <div class="col-lg-3 milestone_col">
      <div class="milestone d-flex flex-row align-items-center justify-content-start">
        <div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="images/milestones_3.png" alt=""></div>
        <div class="milestone_content">
          <div class="milestone_counter" data-end-value="124">0</div>
          <div class="milestone_text">예약현황</div>
        </div>
      </div>
    </div>

    <!-- Milestone -->
    <div class="col-lg-3 milestone_col">
      <div class="milestone d-flex flex-row align-items-center justify-content-start">
        <div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="images/milestones_4.png" alt=""></div>
        <div class="milestone_content">
          <div class="milestone_counter" data-end-value="25">0</div>
          <div class="milestone_text">연장현황</div>
        </div>
      </div>
    </div>

  </div>
</div>


<!-- Loaders -->

<div class="loaders">
  <div class="elements_title">통계</div>
  <div class="loaders_container">
    <div class="row elements_loaders_container">
      <div class="col-lg-3 loader_col">
        <!-- Loader -->
        <div class="circle loader" data-value="1.0">
          <strong><i></i></strong>
          <span>월별 대출률</span>
        </div>
      </div>
      <div class="col-lg-3 loader_col">
        <!-- Loader -->
        <div class="circle loader" data-value="0.80">
          <strong><i></i></strong>
          <span>월별 반납률</span>
        </div>
      </div>
      <div class="col-lg-3 loader_col">
        <div class="circle loader" data-value="0.70">
          <strong><i></i></strong>
          <span>월별 연체률</span>
        </div>
      </div>
      <div class="col-lg-3 loader_col">
        <div class="circle loader" data-value="0.65">
          <strong><i></i></strong>
          <span>월별 연장률</span>
        </div>
      </div>
    </div>
  </div>
</div>
        </div>
    </section>
    <jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>
