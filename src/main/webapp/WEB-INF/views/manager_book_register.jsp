<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import =  "isbn_module.parse_isbn"%>

<%
String cp = request.getContextPath();
request.setCharacterEncoding("UTF-8");

%>


<jsp:include page="/WEB-INF/views/header/manager_header.jsp"></jsp:include>


<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
	
<script> 
function KeyCheck(){
	var isValidUserEmail = false;  
	var BARCODE = $("#BARCODE").val();
	
	console.log(BARCODE)
	$.ajax({
		url:'<%=cp%>/KeyCheck',
		type:'POST',
		dataType:'text',
		
		success:function(data){
			if (data == "true") {
				// 일치하면 통과
				console.log("중복 Email이 습니다.");
				$("#userEmailLabel").css("color","green");
				$("#userEmailLabel").text("중복체크 완료!");
				isValidUserEmail = true;
			} else {
				$("#userEmailLabel").css("color","red");
				$("#userEmailLabel").text("중복됨!");
				isValidUserEmail = false;
			}
		},error:function(request, status, error){
				alert(request+","+status+","+error);
			console.log(request+","+status+","+error);
			$("#userEmailLabel").css("color","red");
			$("#userEmailLabel").text("중복됨!");
			isValidUserEmail = false;
			}
	});
	
}
</script>


<body>
	<jsp:include page="/WEB-INF/views/header/main_nav.jsp"></jsp:include>


   <div class="breadcrumb">
       <div class="container">
           <a class="breadcrumb-item" href="<%=cp%>/index">Home</a>
           <span class="breadcrumb-item active">manager book register</span>
       </div>
   </div>


   <!-- ëìë±ë¡ íì´ì§ -->

   <section class="static about-sec">
       <div class="container">
           <h1>신규도서 등록</h1>
          
           
           <head>
           <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
           <title>회원가입창</title>
           <link href="<%=cp%>/manager_styles.css" rel="stylesheet" type="text/css" />
           
           
           </head>


           <form action="<%=cp%>/manager_book_register" method="post" >
           <table>
               <thead>
                   <colgroup>
                   	<col width="120" />
                       <col width="500" />
                   </colgroup>
               </thead>
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
                       	<input type="text" id="title1" name="title1" size="35" class="inBorder"/>


						<button id="isbnSearch1" onclick="isbnSearch1_click();">ISBN 검색</button>
                       	<button id="isbnSearch2" onclick="isbnSearch2_click();">ISBN 입력</button>

						
                        </td>
                   </tr>
                   <!-- ì ì -->
                   <tr>
                   	<th>저자 </th>
                       <td>
                       	<input type="text" id="author1" name="author1" size="40" class="inBorder"/>
                        </td>
                   </tr>
                   <!-- ë°íì²ëª -->
                   <tr>
                   	<th>발행처명 </th>
                       <td>
                       	<input type="text" id="publisher1" name="publisher1" class="inBorder"/>
                        </td>
                   </tr>
                   <tr>
                   	<th>발행년도 </th>
                       <td>
                       	<input type="text" id="pubyear1" name="pubyear1" class="inBorder"/>
                        </td>
                   </tr>
                   <!-- ISBN ë²í¸ -->
                    <tr>
                   	<th>ISBN 번호 </th>
                       <td>
                       	<input type="text" id="isbn1" name="isbn1" class="inBorder" />
                           <!-- - <input type="password" name="inJumin2" class="inBorder" /> -->
                           <div>※ ISBN이 없을때는 0을 13개 입력해주세요</div>
                        </td>
                   </tr>
                   <tr>
                   	<th>분류번호 </th>
                       <td>
                       	<input type="text" id="CLASSIFY_NO" name="CLASSIFY_NO" class="inBorder"/>
                        </td>
                   </tr>

            
                   <tr>
                   	<th>국내 / 국외도서</th>
                       <td>
                             <input type="radio" name="BARCODE_STRING" value="0"/> 국내(EM)
                             <input type="radio" name="BARCODE_STRING" value="1"/> 국외(EB)
                             
                       </td>
                   </tr>
                   <!-- ë¹ë°ë²í¸íì¸-->
					<tr>
                   	<th>바코드 </th>
                       <td>
                        <label id="userEmailLabel" style="float: right;"></label> 
                       	<input type="text" name="BARCODE" id="BARCODE" class="KeyCheck"" />
                       
                        </td>
                   </tr>
                   
                   <tr>
                   	<th>책 종류 구분</th>
                       <td>
                             <input type="radio" name="APART_CODE" value="0"/> R(사전)
                             <input type="radio" name="APART_CODE" value="1"/> W(영어 원문책)
                             <input type="radio" name="APART_CODE" value="2"/> 기타
                       </td>
                   </tr>
                   
					<tr>
                   	<th>저자번호 </th>
                       <td>
                       	<input type="text" name="AUTHOR_NO" class="inBorder" />
                       	<div>※ 저자첫자 + 번호3개 + 책이름 첫글자를 입력해주세요</div>
                        </td>
                   </tr>
                   
					<tr>
                   	<th>입력하는 사람 </th>
                       <td>
                       	<input type="text" name="INPUT_NAME" class="inBorder" />
                        </td>
                   </tr>

<!--                    <tr>
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
                   이메일
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
  
                   <tr>
                   	<th>등록하는 도서관 위치</th>
                       <td>
                       	<input type="text" name="inZip1" size="7" class="inBorder"/>-
                           <input type="text" name="inZip2" size="7" class="inBorder"/>
                         	<input type="button" value="우편번호찾기" class="inBorder"/>
                        </td>
                   </tr>
                   주소
                    <tr>
                   	<th>주소</th>
                       <td>
                       	<input type="text" size="70" name="inAddr1" class="inBorder"/><br/>
                           <input type="text" size="70" name="inAddr2" class="inBorder"/>
                        </td>
                   </tr>
                   전화번호
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

                   휴대전화번호
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
 -->
                   <!-- 선택입력사항 타이틀 -->
                   <tr>
             			<td colspan="2" class="signSubTitle">
                       	선택입력사항
                       </td>
                   </tr>
                   
					<tr>
                   	<th>연간물  </th>
                       <td>
                       	<input type="text" name="VOLUME" class="inBorder" />
                       	<div>권수, 있을 경우만 입력</div>
                        </td>
                   </tr>

					<tr>
                   	<th>중복책 </th>
                       <td>
                       	<input type="text" name="COPY_NO" class="inBorder" />
                       	<div>중복책 번호, 있을 경우만 입력</div>
                        </td>
                   </tr>
					<tr>
                   	<th>기부자 </th>
                       <td>
                       	<input type="text" name="DONOR_NAME " class="inBorder" />
                        </td>
                   </tr>
                   
					<tr>
                   	<th>입력하는 사람 </th>
                       <td>
                       	<input type="text" name="INPUT_NAME" class="inBorder" />
                        </td>
                   </tr>
                   
					<tr>
                   	<th>갱신하는 사람</th>
                       <td>
                       	<input type="text" name="UPDATE_NAME" class="inBorder" />
                        </td>
                   </tr>
                    <tr>
                   	<th>갱신 날짜</th>
                       <td>
                       	<input type="text" name="UPDATE_DATE" size="5" class="inBorder" />년
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
 <!--            
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
                   결혼여부
                   <tr>
                   	<th>CIP 신청여부</th>
                       <td>
                             <input type="radio" name="marriage" /> 네
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <input type="radio" name="marriage" /> 아니오
                       </td>
                   </tr>
                   직업
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
 -->

               </tbody>



               <!-- 버텀부 -->
           	<tfoot>
               	<tr>
             			<td colspan="2">
                       	<button tabindex="0" type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30 signupbtn">등록</button>
                        <button tabindex="0" class="btn btn-primary btn-flat m-b-30 m-t-30 signupbtn">취소</button>
                       </td>
                   </tr>
               </tfoot>
           </table>
           </form>

           <body>
           </body>
           

       </div>
   </section>
<jsp:include page="/WEB-INF/views/footer/main_footer.jsp"></jsp:include>
<script>

function isbnSearch1_click() {
   	<%
   	request.setCharacterEncoding("UTF-8");
    String str = request.getParameter("title1");
    
    parse_isbn A = new parse_isbn();
	String title = A.title(str);
	String author = A.author(str);
	String publisher = A.publisher(str);
	String pubyear = A.pubyear(str);
	String isbn = A.isbn_a(str);
	%>
	var is = '<%=isbn%>';
	
	alert("ISBN을 검색합니다.");
	

}
function isbnSearch2_click() {
	var ti = '<%=title%>';
	var is = <%=isbn%>;
	var puby = <%=pubyear%>;
	var publ = '<%=publisher%>';
	var au = '<%=author%>';

	$('#title1').val(ti);
	$('#isbn1').val(is);
	$('#pubyear1').val(puby);
	$('#publisher1').val(publ);
	$('#author1').val(au);
}

</script>
</body>

</html>
