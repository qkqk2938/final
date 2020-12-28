<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Bueno - Food Blog HTML Template</title>

    <c:set var="path" value="${pageContext.request.contextPath}"/>
    
    <!-- Favicon -->
    <link rel="icon" href="${path}/resources/img/core-img/favicon2.png.jpg">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="${path}/resources/css/style.css">
    <style>
   @import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
    	.container h1{text-align:center;font-family: 'Jeju Gothic', sans-serif;}
    </style>
    

</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-content">
            <h3>Cooking in progress..</h3>
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

    <!-- ##### Header Area Start ##### -->
     <jsp:include page="header.jsp"/>
  <!-- ##### Header Area End ##### -->
    <!-- ##### Treading Post Area Start ##### -->
    <jsp:include page="secmenu.jsp"/>
    <!-- ##### Treading Post Area End ##### -->
   
	<div class="container">
		<br>
		<h1>MyPage</h1>
		<br>
		<ul class="nav nav-tabs nav-justified">
  			<li class="nav-item" id="first">
   			 <a class="nav-link active" href="#myCafe" data-toggle="tab">나의 카페</a>
  			</li>
		</ul>
	</div>
	
	<div class="tab-content container">
		
		<div class="tab-pane show active" id="myCafe" style="overflow:hidden;">
		<c:forEach items="${list}" var="vo">
		<c:if test="${list==null}">
			<div>
			<img src="display?fileName=coffee.jpg"><br>
			<h3>아직 등록한 카페가 없으신가요??</h3>
			<input type="button" value="카페등록하기" onClick="location.href='insert'">
			</div>
		</c:if>
		<div style="float:left;margin:10px;">
			<c:if test="${vo.CIMAGE==null}">
			<img src="http://placehold.it/150x150" onClick="location.href=''"><br>
			</c:if>
			<c:if test="${vo.CIMAGE!=null}">
			<img src="display?fileName=${vo.CIMAGE}" onClick="location.href='/final/read?ccode=${vo.CCODE}'" style="width:150px;height:150px;"><br>
			</c:if>
			${vo.CNAME}<br>
			조회수 :&nbsp;${vo.VIEWCNT}</br>
			평점 :&nbsp;${vo.RSCOPE}
			<br>
			<input type="button" value="수정" onClick="location.href='/final/update?ccode=${vo.CCODE}'">
			</div>
		</c:forEach>
		</div>
		</div>
		
    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-5">
                    <!-- Copywrite Text -->
                    <p class="copywrite-text"><a href="#"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
    <!-- ##### Footer Area end ##### -->

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
	<script type="text/javascript">
		nulllist();
		function nulllist(){
			var tab = $("#myCafe").text();
			var tab2 = tab.trim();
			if(tab2==""){
				$("#myCafe").html("<div style='height:500px; padding-top:50px; text-align:center;'><img style='width:150px; height:150px; margin:20px;' src='https://www.urbanbrush.net/web/wp-content/uploads/edd/2017/12/web-20171221064117518180.png'><br><p>아직 등록하신 카페가 없으신가요??</p><button type='button' class='btn btn-info' onClick=location.href='/final/insert'>카페등록 바로가기</button></div>");
			}
			
		}
	</script>
</html>