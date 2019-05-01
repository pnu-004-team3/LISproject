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
            <span class="breadcrumb-item active">Login</span>
        </div>
    </div>
    <section class="static about-sec">
        <div class="container">
            <h1>ê´ë¦¬ì ëª¨ëí°ë§</h1>
            <div class="milestones">
  <div class="elements_title">ëì¶/ì°ì²´/ìì½/ì°ì¥ íí©</div>
  <div class="row milestones_row">

    <!-- Milestone -->
    <div class="col-lg-3 milestone_col">
      <div class="milestone d-flex flex-row align-items-center justify-content-start">
        <div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="<%=cp%>/resources/images/milestones_1.png" alt=""></div>
        <div class="milestone_content">
          <div class="milestone_counter" data-end-value="651">0</div>
          <div class="milestone_text">ëì¶íí©</div>
        </div>
      </div>
    </div>

    <!-- Milestone -->
    <div class="col-lg-3 milestone_col">
      <div class="milestone d-flex flex-row align-items-center justify-content-start">
        <div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="<%=cp%>/resources/images/milestones_2.png" alt=""></div>
        <div class="milestone_content">
          <div class="milestone_counter" data-end-value="1256">0</div>
          <div class="milestone_text">ì°ì²´íí©</div>
        </div>
      </div>
    </div>

    <!-- Milestone -->
    <div class="col-lg-3 milestone_col">
      <div class="milestone d-flex flex-row align-items-center justify-content-start">
        <div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="<%=cp%>/resources/images/milestones_3.png" alt=""></div>
        <div class="milestone_content">
          <div class="milestone_counter" data-end-value="124">0</div>
          <div class="milestone_text">ìì½íí©</div>
        </div>
      </div>
    </div>

    <!-- Milestone -->
    <div class="col-lg-3 milestone_col">
      <div class="milestone d-flex flex-row align-items-center justify-content-start">
        <div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="<%=cp%>/resources/images/milestones_4.png" alt=""></div>
        <div class="milestone_content">
          <div class="milestone_counter" data-end-value="25">0</div>
          <div class="milestone_text">ì°ì¥íí©</div>
        </div>
      </div>
    </div>

  </div>
</div>


<!-- Loaders -->

<div class="loaders">
  <div class="elements_title">íµê³</div>
  <div class="loaders_container">
    <div class="row elements_loaders_container">
      <div class="col-lg-3 loader_col">
        <!-- Loader -->
        <div class="circle loader" data-value="1.0">
          <strong><i></i></strong>
          <span>ìë³ ëì¶ë¥ </span>
        </div>
      </div>
      <div class="col-lg-3 loader_col">
        <!-- Loader -->
        <div class="circle loader" data-value="0.80">
          <strong><i></i></strong>
          <span>ìë³ ë°ë©ë¥ </span>
        </div>
      </div>
      <div class="col-lg-3 loader_col">
        <div class="circle loader" data-value="0.70">
          <strong><i></i></strong>
          <span>ìë³ ì°ì²´ë¥ </span>
        </div>
      </div>
      <div class="col-lg-3 loader_col">
        <div class="circle loader" data-value="0.65">
          <strong><i></i></strong>
          <span>ìë³ ì°ì¥ë¥ </span>
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
