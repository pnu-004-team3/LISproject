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


    <!-- ëìë±ë¡ íì´ì§ -->

    <section class="static about-sec">
        <div class="container">
            <h1>ê´ë¦¬ì ëì¶ / ë°ë©</h1>
            <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
            <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <link href="<%=cp%>/manager_styles.css" rel="stylesheet" type="text/css" />
            </head>

                                        <form class="form-inline my-2 my-lg-0 search_book">
                        						    	<div class="search_form">
                        						    		<select class="search_form_select">
                        										<option value="0"> íì ë²í¸ </option>
                        										<option value="1"> íì ì´ë¦ </option>
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
                <th scope="row" class="col-2">ìì´ë(íë²/êµë²)</th>
                <td>201424451</td>
            </tr>
            <tr>
                <th scope="row">ì´ë¦</th>
                <td>ë¬¸íì¤</td>
            </tr>
            <tr>
                <th scope="row">ìì</th>
                <td>ê³µê³¼ëí/ì ê¸°ì»´í¨í°ê³µíë¶/ì ë³´ì»´í¨í°ê³µíì ê³µ</td>
            </tr>
            <tr>
                <th scope="row">ì´ëì í</th>
                <td><input type="text" id="phone_number" name="phone_number" value="010-9863-1881" class="rd-form"></td>
            </td></tr>
            <tr>
                <th scope="row">ì´ë©ì¼</th>
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
