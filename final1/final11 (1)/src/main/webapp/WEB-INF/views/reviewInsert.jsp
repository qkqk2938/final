<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <style>
    #listFile img{width:89px;height:89px;float:left;margin:5px;}
    #btnImage{margin:5px;float:left;width: 89px;height: 89px;line-height:89px;text-align:center;border: 1px dashed #DBDBDB;cursor: pointer;opacity: 1;transform: scale(1);}
     #star_grade a{
        text-decoration: none;
        color: gray;
    }
    #star_grade a.on{
        color: red;
    }
</style>
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

      <!-- Title -->
      <title>Cafe人 - 카페를 좋아하는 사람들</title>
 <c:set var="path" value="${pageContext.request.contextPath}"/>
    <!-- Favicon -->
    <link rel="icon" href="${path}/resources/img/core-img/favicon2.png.jpg">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="${path}/resources/css/style.css">
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-content">
            <h3>Welecome Caffe人</h3>
            <div id="cooking">
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div id="area">
                    <div id="sides">
                        <div id="pan"></div>
                        <div id="handle"></div>
                    </div>
                    <div id="pancake">
                        <div id="pastry"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="secmenu.jsp"></jsp:include>
  
<div style="margin:0 auto;text-align:center;margin-top:40px;"><strong style="font-size:28px;#EC7777">${vo.cname}</strong><span style="font-size:16px;">&nbsp;에대한 솔직한 리뷰를 작성해주세요.</span></div>

	<form name="frm" action="reviewInsert" method="post"
		enctype="multipart/form-data">
		<div style="width:678px;height:591px;margin:0 auto;text-align:center;padding: 16px;">
		<div style="border:1px solid gray;margin:10px;padding:10px;">
		<input type="hidden" name="ccode" value="${vo.ccode}">
		<input type="hidden" name="gid" value="${gmember.gid}">
		<input type="hidden" name="rscope" value="0">
			<p id="star_grade">
       	 		<a href="#" style="font-size:30px;">★</a>
        		<a href="#" style="font-size:30px;">★</a>
        		<a href="#" style="font-size:30px;">★</a>
        		<a href="#" style="font-size:30px;">★</a>
        		<a href="#" style="font-size:30px;">★</a>
			</p>
			
			<textarea maxlength="10000" name="rcontent" placeholder="${gmember.gnickname} 님, 주문하신 메뉴는 어떠셨나요? 카페의 분위기와 서비스도 궁금해요!" style="border: 0;resize: none;margin:10px auto;width:100%;overflow: hidden; overflow-wrap: break-word; height: 150px;padding:10px;"></textarea> 
		</div>
		<div>
			<div id = "listFile" style="overflow:hidden;margin:5px;">
			<input type = button id = "btnImage" value = "+">
			</div>
			<input type="file" name="files" style="display:none" multiple>
			<input type = "submit" value = "리뷰 등록" style="float:right;min-width: 140px;min-height: 50px;padding-left: 14px;padding-right: 14px;border: 1px solid #ff7100;border-radius: 50px;font-size: 16px;color: #FFFFFF;text-align: center;background-color: #EC7777;margin-right:5px;appearance: none;cursor: pointer;">
			<input type = "reset" value = "취소" style="float:right;    min-width: 140px;min-height: 50px;margin-right: 16px;padding-left: 14px;padding-right: 14px;border: 1px solid #7F7F7F;border-radius: 50px;font-size: 16px;color: #7F7F7F;text-align: center;background-color: #FFFFFF;" onClick="location.href='read?ccode=${vo.ccode}'">
		</div>
		</div>
	</form>
    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-5">
                    <!-- Copywrite Text -->
                    <p class="copywrite-text"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>
                <div class="col-12 col-sm-7">
                    <!-- Footer Nav -->
                    <div class="footer-nav">
                        <ul>
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">Recipes</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="${path}/resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="${path}/resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="${path}/resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="${path}/resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="${path}/resources/js/active.js"></script>
</body>
<script>

$('#star_grade a').click(function(){
    $(this).parent().children("a").removeClass("on");  /* 별점의 on 클래스 전부 제거 */ 
    $(this).addClass("on").prevAll("a").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
    var scope=$(".on").length;
   
    return false;
});

	$(frm).on("submit",function(e){
		e.preventDefault();
		var scope=$(".on").length;
	  
	    $(frm.rscope).val(scope);
		if(!confirm("등록 하시겠습니까?")) return;
		frm.submit();
	});
	$("#btnImage").on("click",function(){
		$(frm.files).click();
	});
	
	$(frm.files).on("change",function(){
		var files = $(frm.files)[0].files;
		var str="";
		
		$.each(files,function(index, file){
			str += "<img src='"+URL.createObjectURL(file)+"'>";
		});
		$("#listFile").html(str+"<input type = button id = 'btnImage' value = '+' >");	
	});
	</script>
</html>