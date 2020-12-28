<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html lang="en">

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
   			 <a class="nav-link active" href="#favorites" data-toggle="tab">내가 찜한카페</a>
  			</li>
  			<li class="nav-item">
  			  <a class="nav-link" href="#review" data-toggle="tab">내가 작성한 리뷰</a>
  			</li>
  			<li class="nav-item">
  			  <a class="nav-link" href="#write" data-toggle="tab">내가 작성한 댓글</a>
  			</li>
		</ul>
	</div>
	
	<div class="tab-content container">
		
		<div class="tab-pane show active" id="favorites" style="overflow:hidden;">
		<c:forEach items="${list}" var="vo">
		
		<div style="float:left;margin:10px;">
		
			<c:if test="${vo.CIMAGE==null}">
			<img src="http://placehold.it/150x120" onClick="location.href='/final/'"><br>
			</c:if>
			<c:if test="${vo.CIMAGE!=null}">
			<img src="display?fileName=${vo.cimage}" onClick="location.href='/final/'"><br>
			</c:if>
			${vo.CNAME}<br>
			조회수 :&nbsp;${vo.VIEWCNT}
			</div>
		</c:forEach>
		</div>
		
		
		<div class="tab-pane" id="review" style="overflow:hidden;">
			
			<c:forEach items="${list1}" var="v">
		<div style="float:left;margin:10px;">
			<c:if test="${v.CIMAGE==null}">
			<img src="http://placehold.it/150x120" onClick="location.href='/final/'"><br>
			</c:if>
			<c:if test="${v.CIMAGE!=null}">
			<img src="display?fileName=${vo.cimage}" onClick="location.href='/final/'"><br>
			</c:if>
			${v.CNAME}<br>
			평점 :&nbsp;${v.RSCOPE}<br>
			${v.RCONTENT}<br>
			${v.RDATE}
			</div>
		</c:forEach>
		</div>
		
		<div class="tab-pane" id="write" style="overflow:hidden;">
			
			<c:forEach items="${list2}" var="vv">
		<div style="float:left;margin:10px;">
			<c:if test="${vv.image==null}">
			<img src="http://placehold.it/150x120" onClick="location.href='/final/'"><br>
			</c:if>
			<c:if test="${vv.image!=null}">
			<img src="display?fileName=${vo.cimage}" onClick="location.href='/final/'"><br>
			</c:if>
			${vv.RCCONTENT}<br>
			${vv.RCDATE}
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
			var tab1 = $("#favorites").text();
			var tab2 = $("#review").text();
			var tab3 = $("#write").text();
			var trim1 = tab1.trim();
			var trim2 = tab2.trim();
			var trim3 = tab3.trim();
			if(trim1==""){
				$("#favorites").html("<div style='height:500px; padding-top:50px; text-align:center;'><img style='width:150px; height:150px; margin:20px;' src='https://www.urbanbrush.net/web/wp-content/uploads/edd/2017/12/web-20171221064117518180.png'><br><p>아직 맘에드는 카페가 없으신가요??</p><button type='button' class='btn btn-info' onClick=location.href='/final/list'>카페리스트 바로가기</button></div>");
			}
			if(trim2==""){
				$("#review").html("<div style='height:500px; padding-top:50px; text-align:center;'><img style='width:150px; height:150px; margin:20px;' src='https://www.flaticon.com/kr/premium-icon/icons/svg/2265/2265547.svg'><br><p>아직 작성하신 리뷰가 없으신가요??</p><button type='button' class='btn btn-info' onClick=location.href='/final/list'>카페리스트 바로가기</button></div>");
			}
			if(trim3==""){
				$("#write").html("<div style='height:500px; padding-top:50px; text-align:center;'><img style='width:150px; height:150px; margin:20px;' src='https://mblogthumb-phinf.pstatic.net/20110718_192/melong0466_131091793485277aA2_PNG/speech_bubble_1.png?type=w2'><br><p>아직 작성하신 댓글이 없으신가요??</p><button type='button' class='btn btn-info' onClick=location.href='/final/list'>카페리스트 바로가기</button></div>");
			}
			
		}
	</script>
</html>