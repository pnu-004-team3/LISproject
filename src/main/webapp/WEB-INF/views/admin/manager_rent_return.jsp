<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>
<link href="<%=cp %>/resources/barcode/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=cp %>/resources/barcode/css/font-awesome.min.css">
<link href="<%=cp %>/resources/barcode/css/theme.css" rel="stylesheet">

<script src="<%=cp %>/resources/barcode/js/jquery.min.js"></script>
<script src="<%=cp %>/resources/barcode/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=cp %>/resources/barcode/js/quagga.min.js"></script>
		
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
         <br><br>						    
      <div class="row">
		<div class="col-lg-6">
			<div class="input-group">
				<input id="scanner_input" class="form-control" placeholder="Click the button to scan an EAN..." type="text"> 
			</div><!-- /input-group -->
			
		</div><!-- /.col-lg-6 -->
		<span class="input-group-btn"> 
					<button class="btn btn-default" type="button" data-toggle="modal" data-target="#livestream_scanner">
						Barcode
					</button> 
				</span>
	</div><!-- /.row -->
										
	<div class="modal" id="livestream_scanner" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">x</span>
					</button>
					<h4 class="modal-title">Barcode Scanner</h4>
				</div>
				<div class="modal-body" style="position: static">
					<div id="interactive" class="viewport"><video autoplay="true" preload="auto" src=""></video><canvas class="drawingBuffer" width="1280" height="720"></canvas><br clear="all"></div>
					<div class="error"></div>
				</div>
				<div class="modal-footer">
					<label class="btn btn-default pull-left">
						 Use camera app
						<input type="file" accept="image/*;capture=camera" capture="camera" class="hidden">
					</label>
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal --> 
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




<style>
	#interactive.viewport {position: relative; width: 100%; height: auto; overflow: hidden; text-align: center;}
	#interactive.viewport > canvas, #interactive.viewport > video {max-width: 100%;width: 100%;}
	canvas.drawing, canvas.drawingBuffer {position: absolute; left: 0; top: 0;}
</style>


<script type="text/javascript">
$(function() {
	// Create the QuaggaJS config object for the live stream
	var liveStreamConfig = {
			inputStream: {
				type : "LiveStream",
				constraints: {
					width: {min: 640},
					height: {min: 480},
					aspectRatio: {min: 1, max: 100},
					facingMode: "environment" // or "user" for the front camera
				}
			},
			locator: {
				patchSize: "medium",
				halfSample: true
			},
			numOfWorkers: (navigator.hardwareConcurrency ? navigator.hardwareConcurrency : 4),
			decoder: {
				"readers":[
					{"format":"ean_reader","config":{}}
				]
			},
			locate: true
		};
	// The fallback to the file API requires a different inputStream option. 
	// The rest is the same 
	var fileConfig = $.extend(
			{}, 
			liveStreamConfig,
			{
				inputStream: {
					size: 800
				}
			}
		);
	// Start the live stream scanner when the modal opens
	$('#livestream_scanner').on('shown.bs.modal', function (e) {
		Quagga.init(
			liveStreamConfig, 
			function(err) {
				if (err) {
					$('#livestream_scanner .modal-body .error').html('<div class="alert alert-danger"><strong><i class="fa fa-exclamation-triangle"></i> '+err.name+'</strong>: '+err.message+'</div>');
					Quagga.stop();
					return;
				}
				Quagga.start();
			}
		);
    });
	
	// Make sure, QuaggaJS draws frames an lines around possible 
	// barcodes on the live stream
	Quagga.onProcessed(function(result) {
		var drawingCtx = Quagga.canvas.ctx.overlay,
			drawingCanvas = Quagga.canvas.dom.overlay;

		if (result) {
			if (result.boxes) {
				drawingCtx.clearRect(0, 0, parseInt(drawingCanvas.getAttribute("width")), parseInt(drawingCanvas.getAttribute("height")));
				result.boxes.filter(function (box) {
					return box !== result.box;
				}).forEach(function (box) {
					Quagga.ImageDebug.drawPath(box, {x: 0, y: 1}, drawingCtx, {color: "green", lineWidth: 2});
				});
			}

			if (result.box) {
				Quagga.ImageDebug.drawPath(result.box, {x: 0, y: 1}, drawingCtx, {color: "#00F", lineWidth: 2});
			}

			if (result.codeResult && result.codeResult.code) {
				Quagga.ImageDebug.drawPath(result.line, {x: 'x', y: 'y'}, drawingCtx, {color: 'red', lineWidth: 3});
			}
		}
	});
	
	// Once a barcode had been read successfully, stop quagga and 
	// close the modal after a second to let the user notice where 
	// the barcode had actually been found.
	Quagga.onDetected(function(result) {    		
		if (result.codeResult.code){
			$('#scanner_input').val(result.codeResult.code);
			Quagga.stop();	
			setTimeout(function(){ $('#livestream_scanner').modal('hide'); }, 1000);			
		}
	});
    
	// Stop quagga in any case, when the modal is closed
    $('#livestream_scanner').on('hide.bs.modal', function(){
    	if (Quagga){
    		Quagga.stop();	
    	}
    });
	
	// Call Quagga.decodeSingle() for every file selected in the 
	// file input
	$("#livestream_scanner input:file").on("change", function(e) {
		if (e.target.files && e.target.files.length) {
			Quagga.decodeSingle($.extend({}, fileConfig, {src: URL.createObjectURL(e.target.files[0])}), function(result) {alert(result.codeResult.code);});
		}
	});
});
</script>
	
