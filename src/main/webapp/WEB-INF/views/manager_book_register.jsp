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


   <!-- ëìë±ë¡ íì´ì§ -->

   <section class="static about-sec">
       <div class="container">
           <h1>신규도서 등록</h1>
           <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
           <html xmlns="http://www.w3.org/1999/xhtml">
           <head>
           <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
           <title>회원가입창</title>

           <link href="<%=cp%>/manager_styles.css" rel="stylesheet" type="text/css" />
           </head>


           <form>
           <table>
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
                       	필수입력사항
                       </td>
               	</tr>
                   <!-- ì´ë¦ -->
                   <tr>
                   	<th>도서 이름 </th>
                       <td>
                       	<input type="text" name="inName" class="inBorder"/>
                        </td>
                   </tr>
                   <!-- ì ì -->
                   <tr>
                   	<th>저자 </th>
                       <td>
                       	<input type="text" name="inName" class="inBorder"/>
                        </td>
                   </tr>
                   <!-- ë°íì²ëª -->
                   <tr>
                   	<th>발행처명 </th>
                       <td>
                       	<input type="text" name="inName" class="inBorder"/>
                        </td>
                   </tr>
                   <!-- ISBN ë²í¸ -->
                    <tr>
                   	<th>ISBN 번호 </th>
                       <td>
                       	<input type="text" name="inJumin1" class="inBorder" />
                           <!-- - <input type="password" name="inJumin2" class="inBorder" /> -->
                           <div>※ ISBN number만 입력해주세요</div>
                        </td>
                   </tr>

                   <!-- ìì´ë -->
                   <tr>
                   	<th>도서 아이디</th>
                       <td>
                       	<input type="text" name="inId" class="inBorder" />
                        </td>
                   </tr>
                   <!-- ë¹ë°ë²í¸ -->
                   <tr>
                   	<th>전체 페이지수</th>
                       <td>
                       	<input type="password" name="inId" class="inBorder"/>
                        </td>
                   </tr>
                   <!-- ë¹ë°ë²í¸íì¸-->
				<tr>
                   	<th>인증키</th>
                       <td>
                       	<input type="password" name="inIdr" class="inBorder" />
                        </td>
                   </tr>
                   <!-- 입고날짜 -->
                   <tr>
                   	<th>입고날짜</th>
                       <td>
                       	<input type="text" name="inyear" size="5" class="inBorder" />년
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
                           </select> 월
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
                           </select> 일
                           &nbsp;

                        </td>
                   </tr>
                   <!-- 이메일 -->
                   <tr>
                   	<th>담당자 E-Mail</th>
                       <td>
                       	<input type="text" name="inEmail1" class="inBorder" />@
                           <input type="text" name="inEmail2" class="inBorder" />
                           <select class="inBorder">
                           	<option value="0">==직접입력==
                             	<option value="daum.net">daum.net
           			        <option value="naver.com">naver.com
                         		<option value="nate.com">nate.com
                           </select>

                        </td>
                   </tr>
                      <!-- 이메일 수신여부-->
                   <tr>
                   	<th>전자책 발행여부</th>
                       <td>
                             <input type="radio" name="emailSend" /> 예
                             <input type="radio" name="emailSend" /> 아니오
                       </td>
                   </tr>

                   <!-- 우편번호-->
                   <tr>
                   	<th>등록하는 도서관 위치</th>
                       <td>
                       	<input type="text" name="inZip1" size="7" class="inBorder"/>-
                           <input type="text" name="inZip2" size="7" class="inBorder"/>
                         	<input type="button" value="우편번호찾기" class="inBorder"/>
                        </td>
                   </tr>
                   <!-- 주소 -->
                    <tr>
                   	<th>주소</th>
                       <td>
                       	<input type="text" size="70" name="inAddr1" class="inBorder"/><br/>
                           <input type="text" size="70" name="inAddr2" class="inBorder"/>
                        </td>
                   </tr>
                   <!-- 전화번호 -->
                   <tr>
                   	<th>전화번호</th>
                       <td>
                           <select name="inPhone1" class="inBorder">
                           	<option value="02">02
                             	<option value="061">061
           			        <option value="063">063
                                <option value="070">070
                         		<option value="추가">추가
                           </select>
                       	<input type="text" size="5" name="inPhone2" class="inBorder"/>-
                           <input type="text" size="5" name="inPhone3" class="inBorder"/>
                        </td>
                   </tr>

                   <!-- 휴대전화번호 -->
                   <tr>
                   	<th>핸드폰번호</th>
                       <td>
                           <select name="inHphone1" class="inBorder">
                           	<option value="010">010
                             	<option value="016">061
           			        <option value="017">063
                               <option value="018">063
                         		<option value="019">추가
                           </select>
                       	<input type="text" size="5" name="inHphone2" class="inBorder" />-
                           <input type="text" size="5" name="inHphone3" class="inBorder" />
                        </td>
                   </tr>

                   <!-- 선택입력사항 타이틀 -->
                   <tr>
             			<td colspan="2" class="signSubTitle">
                       	선택입력사항
                       </td>
                   </tr>
                   <!-- 가입경로 -->
                    <tr>
                   	<th>들어오게된 경로</th>
                       <td>
                           <select class="inBorder">
                           	<option value="0">== 경로 ==
                     	        <option value="포탈사이트검색">포탈사이트검색
                               <option value="블로그">블로그
                               <option value="주위소개">주위소개
                               <option value="etc">기타

                           </select>

                        </td>
                   </tr>
                   <!-- 결혼여부 -->
                   <tr>
                   	<th>CIP 신청여부</th>
                       <td>
                             <input type="radio" name="marriage" /> 네
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <input type="radio" name="marriage" /> 아니오
                       </td>
                   </tr>
                   <!-- 직업 -->
                     <tr>
                   	<th>직업</th>
                       <td>
                           <select name="inJob" class="inBorder">
                           	<option value="0">== 직업선택 ==
                             	<option value="학생">학생
           			        <option value="주부">주부
                         		<option value="프로그래머">프로그래머
                          		<option value="PC정비사">PC정비사
                               <option value="none">없음
                               <option value="서비스없">서비스업
                               <option value="서비스없">제조업

                           </select>

                        </td>
                   </tr>


               </tbody>



               <!-- 버텀부 -->
           	<tfoot>
               	<tr>
             			<td colspan="2">
                       	<input type="button" value="등록" class="inBorder" />
                           <input type="reset" value="취소" class="inBorder"/>
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
