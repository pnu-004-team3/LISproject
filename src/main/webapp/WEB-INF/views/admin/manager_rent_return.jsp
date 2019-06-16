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
            <a class="breadcrumb-item" href="<%=cp%>/index">Home</a>
            <span class="breadcrumb-item active">Login</span>
        </div>
    </div>


    <!-- 도서등록 페이지 -->

    <section class="static about-sec">
        <div class="container">
            <h1>관리자 대출 / 반납</h1>
            <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
            <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <link href="manager_styles.css" rel="stylesheet" type="text/css" />
            </head>

                                        <form class="form-inline my-2 my-lg-0 search_book">
                        						    	<div class="search_form">
                        						    		<select class="search_form_select">
                        										<option value="0"> 회원 번호 </option>
                        										<option value="1"> 회원 이름 </option>
                        										<option value="2">  </option>
                        										<option value="3">  </option>

                        									</select>
                        							    	<input class="form-control" type="search" style="height:50px; border:none;  width:55%;" placeholder="Search here..." aria-label="Search">
                        									<button type="submit" class="fa fa-search search_button"></button>
                        								</div>
                        						    </form>
                                        <p></p>


            <form>
              <table class="rd-table th-bg gray line responsive">
        <tbody>
            <tr>
                <th scope="row" class="col-2">아이디(학번/교번)</th>
                <td>201424451</td>
            </tr>
            <tr>
                <th scope="row">이름</th>
                <td>문혁준</td>
            </tr>
            <tr>
                <th scope="row">소속</th>
                <td>공과대학/전기컴퓨터공학부/정보컴퓨터공학전공</td>
            </tr>
            <tr>
                <th scope="row">이동전화</th>
                <td><input type="text" id="phone_number" name="phone_number" value="010-9863-1881" class="rd-form"></td>
            </td></tr>
            <tr>
                <th scope="row">이메일</th>
                <td><input type="text" id="user_email" name="user_email" value="mon6972@naver.com" class="rd-form width-md"></td>
            </tr>
        </tbody>
    </table>

            </form>

            <body>
            </body>
            </html>



        </div>
    </section>
<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
</body>

</html>
