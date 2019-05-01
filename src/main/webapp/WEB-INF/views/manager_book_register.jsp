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
            <h1>ì ê·ëì ë±ë¡</h1>
            <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
            <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title>íìê°ìì°½</title>

            <link href="<%=cp%>/manager_styles.css" rel="stylesheet" type="text/css" />
            </head>
            <!-- ì´ë¦, ì£¼ë¯¼ë±ë¡ë²í¸, ìì´ë, ë¹ë°ë²í¸, ë¹ë°ë²í¸íì¸, ìëìì¼,
                 ì´ë©ì¼, ì°í¸ë²í¸, ì£¼ì, ì íë²í¸, í´ëì íë²í¸, ê²°í¼ì¬ë¶, ì§ì, ê°ìê²½ë¡, -->


            <form>
            <table>
            	<!-- í¤ëë¶ -->
                <thead>
                    <colgroup>
                    	<col width="120" />
                        <col width="500" />
                    </colgroup>
                </thead>



                <!-- ë°ëë¶ -->
                <tbody>

                    <tr>
                        <td colspan="2" class="signSubTitle">
                        	íììë ¥ì¬í­
                        </td>
                	</tr>
                    <!-- ì´ë¦ -->
                    <tr>
                    	<th>ëì ì´ë¦ </th>
                        <td>
                        	<input type="text" name="inName" class="inBorder"/>
                         </td>
                    </tr>
                    <!-- ì ì -->
                    <tr>
                    	<th>ì ì </th>
                        <td>
                        	<input type="text" name="inName" class="inBorder"/>
                         </td>
                    </tr>
                    <!-- ë°íì²ëª -->
                    <tr>
                    	<th>ë°íì²ëª </th>
                        <td>
                        	<input type="text" name="inName" class="inBorder"/>
                         </td>
                    </tr>
                    <!-- ISBN ë²í¸ -->
                     <tr>
                    	<th>ISBN ë²í¸ </th>
                        <td>
                        	<input type="text" name="inJumin1" class="inBorder" />
                            <!-- - <input type="password" name="inJumin2" class="inBorder" /> -->
                            <div>â» ISBN numberë§ ìë ¥í´ì£¼ì¸ì</div>
                         </td>
                    </tr>

                    <!-- ìì´ë -->
                    <tr>
                    	<th>ëì ìì´ë</th>
                        <td>
                        	<input type="text" name="inId" class="inBorder" />
                         </td>
                    </tr>
                    <!-- ë¹ë°ë²í¸ -->
                    <tr>
                    	<th>ì ì²´ íì´ì§ì</th>
                        <td>
                        	<input type="password" name="inId" class="inBorder"/>
                         </td>
                    </tr>
                    <!-- ë¹ë°ë²í¸íì¸-->
                     <tr>
                    	<th>ì¸ì¦í¤</th>
                        <td>
                        	<input type="password" name="inIdr" class="inBorder" />
                         </td>
                    </tr>
                    <!-- ìê³ ë ì§ -->
                    <tr>
                    	<th>ìê³ ë ì§</th>
                        <td>
                        	<input type="text" name="inyear" size="5" class="inBorder" />ë
                        	<select class="inBorder">
                            	<option value="1">1
                              	<option value="2">2
            			        <option value="3">3
                          		<option value="4">4
                              	<option value="5">5
            			        <option value="6">6
                                <option value="7">7
                              	<option value="8">8
            			        <option value="9">9
                                <option value="10">10
                              	<option value="11">11
            			        <option value="12">12
                            </select> ì
                            <select class="inBorder">
                            	<option value="1">1
                              	<option value="2">2
            			        <option value="3">3
                          		<option value="4">4
                              	<option value="5">5
            			        <option value="6">6
                                <option value="7">7
                              	<option value="8">8
            			        <option value="9">9
                                <option value="10">10
                              	<option value="11">11
            			        <option value="12">12
                              	<option value="13">13
                              	<option value="14">14
            			        <option value="15">15
                          		<option value="16">16
                              	<option value="17">17
            			        <option value="18">18
                                <option value="19">19
                              	<option value="20">20
            			        <option value="21">21
                                <option value="22">22
                              	<option value="23">23
            			        <option value="24">24
                               	<option value="25">25
                              	<option value="26">26
            			        <option value="27">27
                          		<option value="28">28
                              	<option value="29">29
            			        <option value="30">30
                                <option value="31">31
                            </select> ì¼
                            &nbsp;

                         </td>
                    </tr>
                    <!-- ì´ë©ì¼ -->
                    <tr>
                    	<th>ë´ë¹ì E-Mail</th>
                        <td>
                        	<input type="text" name="inEmail1" class="inBorder" />@
                            <input type="text" name="inEmail2" class="inBorder" />
                            <select class="inBorder">
                            	<option value="0">==ì§ì ìë ¥==
                              	<option value="daum.net">daum.net
            			        <option value="naver.com">naver.com
                          		<option value="nate.com">nate.com
                            </select>

                         </td>
                    </tr>
                       <!-- ì´ë©ì¼ ìì ì¬ë¶-->
                    <tr>
                    	<th>ì ìì± ë°íì¬ë¶</th>
                        <td>
                              <input type="radio" name="emailSend" /> ì
                              <input type="radio" name="emailSend" /> ìëì¤
                        </td>
                    </tr>

                    <!-- ì°í¸ë²í¸-->
                    <tr>
                    	<th>ë±ë¡íë ëìê´ ìì¹</th>
                        <td>
                        	<input type="text" name="inZip1" size="7" class="inBorder"/>-
                            <input type="text" name="inZip2" size="7" class="inBorder"/>
                          	<input type="button" value="ì°í¸ë²í¸ì°¾ê¸°" class="inBorder"/>
                         </td>
                    </tr>
                    <!-- ì£¼ì -->
                     <tr>
                    	<th>ì£¼ì</th>
                        <td>
                        	<input type="text" size="70" name="inAddr1" class="inBorder"/><br/>
                            <input type="text" size="70" name="inAddr2" class="inBorder"/>
                         </td>
                    </tr>
                    <!-- ì íë²í¸ -->
                    <tr>
                    	<th>ì íë²í¸</th>
                        <td>
                            <select name="inPhone1" class="inBorder">
                            	<option value="02">02
                              	<option value="061">061
            			        <option value="063">063
                                 <option value="070">070
                          		<option value="ì¶ê°">ì¶ê°
                            </select>
                        	<input type="text" size="5" name="inPhone2" class="inBorder"/>-
                            <input type="text" size="5" name="inPhone3" class="inBorder"/>
                         </td>
                    </tr>

                    <!-- í´ëì íë²í¸ -->
                    <tr>
                    	<th>í¸ëí°ë²í¸</th>
                        <td>
                            <select name="inHphone1" class="inBorder">
                            	<option value="010">010
                              	<option value="016">061
            			        <option value="017">063
                                <option value="018">063
                          		<option value="019">ì¶ê°
                            </select>
                        	<input type="text" size="5" name="inHphone2" class="inBorder" />-
                            <input type="text" size="5" name="inHphone3" class="inBorder" />
                         </td>
                    </tr>

                    <!-- ì íìë ¥ì¬í­ íì´í -->
                    <tr>
              			<td colspan="2" class="signSubTitle">
                        	ì íìë ¥ì¬í­
                        </td>
                    </tr>
                    <!-- ê°ìê²½ë¡ -->
                     <tr>
                    	<th>ë¤ì´ì¤ê²ë ê²½ë¡</th>
                        <td>
                            <select class="inBorder">
                            	<option value="0">== ê²½ë¡ ==
                      	        <option value="í¬íì¬ì´í¸ê²ì">í¬íì¬ì´í¸ê²ì
                                <option value="ë¸ë¡ê·¸">ë¸ë¡ê·¸
                                <option value="ì£¼ììê°">ì£¼ììê°
                                <option value="etc">ê¸°í

                            </select>

                         </td>
                    </tr>
                    <!-- ê²°í¼ì¬ë¶ -->
                    <tr>
                    	<th>CIP ì ì²­ì¬ë¶</th>
                        <td>
                              <input type="radio" name="marriage" /> ë¤
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <input type="radio" name="marriage" /> ìëì¤
                        </td>
                    </tr>
                    <!-- ì§ì -->
                      <tr>
                    	<th>ì§ì</th>
                        <td>
                            <select name="inJob" class="inBorder">
                            	<option value="0">== ì§ìì í ==
                              	<option value="íì">íì
            			        <option value="ì£¼ë¶">ì£¼ë¶
                          		<option value="íë¡ê·¸ëë¨¸">íë¡ê·¸ëë¨¸
                           		<option value="PCì ë¹ì¬">PCì ë¹ì¬
                                <option value="none">ìì
                                <option value="ìë¹ì¤ì">ìë¹ì¤ì
                                <option value="ìë¹ì¤ì">ì ì¡°ì

                            </select>

                         </td>
                    </tr>


                </tbody>



                <!-- ë²íë¶ -->
            	<tfoot>
                	<tr>
              			<td colspan="2">
                        	<input type="button" value="ë±ë¡" class="inBorder" />
                            <input type="reset" value="ì·¨ì" class="inBorder"/>
                        </td>
                    </tr>
                </tfoot>
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
