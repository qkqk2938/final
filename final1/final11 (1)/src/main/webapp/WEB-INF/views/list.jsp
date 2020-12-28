<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Cafe人 - 카페를 좋아하는 사람들</title>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- Favicon -->
<link rel="icon" href="${path}/resources/img/core-img/favicon2.png.jpg">

<!-- Stylesheet -->
<link rel="stylesheet" href="${path}/resources/css/style.css">
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>

<style>
#hi{ margin-top:100px;}
#btn {
	margin: auto;
	width: 100%;
	text-align: center;
	margin-top: 40px;
}

#cafeList {
	background: #D3D9DE;
	text-align: center;
	margin: auto 0px;
	border-radius: 5px;
	width: 150px;
	height: 40px
}

#cafeList:focus {
	background: #EBE2DE;
	text-align: center;
	border-radius: 5px;
	width: 150px;
	margin: auto 0px;
	height: 40px
}


#imgList {
	background: #D3D9DE;
	text-align: center;
	border-radius: 5px;
	width: 150px;
	margin: auto 0px;
	height: 40px
}
#imgList:focus {
	background: #EBE2DE;
	text-align: center;
	border-radius: 5px;
	width: 150px;
	margin: auto 0px;
	height: 40px
}


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
	<jsp:include page="header.jsp" />

	<!-- ##### Header Area End ##### -->
	<jsp:include page="secmenu.jsp" />
	<!-- ##### Treading Post Area Start ##### -->

	<!-- ##### Treading Post Area End ##### -->

	<!-- ##### Search Area Start ##### -->

	<!-- ##### Search Area End ##### -->
	
	
		
	<!-- ##### Catagory Post Area Start ##### -->
	
	<div class="catagory-post-area section-padding-100">
       
		<div  class="container">

                           <ul class="nav nav-tabs nav-justified">
  			<li class="nav-item" id="first">
   			 <a class="nav-link active" href="#hi" data-toggle="tab">카페 리스트</a>
  			</li>
  			<li class="nav-item" id="second">
  			  <a class="nav-link" href="#bye" data-toggle="tab">이미지로 보기</a>	
  			</li>
		       </ul>
		       
                      <div id="bye">
	 <jsp:include page="reply.jsp" />
	</div>

			<div id="hi" class="row justify-content-center">
				<h2 id="keyword" style="margin-bottom:50px;"></h2>
				<!-- Post Area -->
				<div class="col-12 col-lg-8 col-xl-9">
					<!-- Single Blog Post -->
					<c:forEach items="${list}" var="vo">
						<div class="single-blog-post style-1 d-flex flex-wrap mb-30">

							<!-- Blog Thumbnail -->
							<div class="blog-thumbnail">
							<a href="read?ccode=${vo.ccode}">
								<img src="display?fileName=cafeimage/${vo.cimage}" alt="">
								</a>
							</div>
							<!-- Blog Content -->
							<div class="blog-content">

								<a href="#" class="post-tag">The Best</a> <a href="read?ccode=${vo.ccode}"
									class="post-title">${vo.cname}</a>
								<div class="post-meta">
									<a href="#" class="post-date">${vo.viewcnt} View</a> <a href="#"
										class="post-author">${vo.ctel}</a>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Nunc tristique justo id elit bibendum pharetra non vitae
									lectus. Mauris libero felis, dapibus a ultrices sed, commodo
									vitae odio. Sed auctor tellus quis arcu tempus.</p>
							</div>
						</div>
						<hr>
					</c:forEach>
				</div>

				<!-- Sidebar Area -->
				<div class="col-12 col-sm-9 col-md-6 col-lg-4 col-xl-3">
					<div class="sidebar-area">

						<!-- Single Widget Area -->
						<div class="single-widget-area author-widget mb-30">
							<div class="background-pattern bg-img"
								style="background-image: url(${path}/resources/img/core-img/pattern2.png);">
								<div class="author-thumbnail">
									<img src="${path}/resources/img/bg-img/23.jpg" alt="">
								</div>
								<p>
									My name is <span>Jessica Smith</span>, I’m a passionate cook
									with a love for vegan food.
								</p>
							</div>
							<div class="social-info">
								<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
								<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
								<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
							</div>
						</div>

						<!-- Single Widget Area -->
						<div class="single-widget-area add-widget mb-30">
							<img src="${path}/resources/img/bg-img/add.png" alt="">
						</div>

						<!-- Single Widget Area -->
						<div class="single-widget-area post-widget mb-30">
							<!-- Single Post Area -->
							<div class="single-post-area d-flex">
								<!-- Blog Thumbnail -->
								<div class="blog-thumbnail">
									<img src="${path}/resources/img/bg-img/12.jpg" alt="">
								</div>
								<!-- Blog Content -->
								<div class="blog-content">
									<a href="#" class="post-title">Friend eggs with ham</a>
									<div class="post-meta">
										<a href="#" class="post-date">July 11, 2018</a> <a href="#"
											class="post-author">By Julia Stiles</a>
									</div>
								</div>
							</div>

							<!-- Single Post Area -->
							<div class="single-post-area d-flex">
								<!-- Blog Thumbnail -->
								<div class="blog-thumbnail">
									<img src="${path}/resources/img/bg-img/13.jpg" alt="">
								</div>
								<!-- Blog Content -->
								<div class="blog-content">
									<a href="#" class="post-title">Burger with fries</a>
									<div class="post-meta">
										<a href="#" class="post-date">July 11, 2018</a> <a href="#"
											class="post-author">By Julia Stiles</a>
									</div>
								</div>
							</div>

							<!-- Single Post Area -->
							<div class="single-post-area d-flex">
								<!-- Blog Thumbnail -->
								<div class="blog-thumbnail">
									<img src="${path}/resources/img/bg-img/14.jpg" alt="">
								</div>
								<!-- Blog Content -->
								<div class="blog-content">
									<a href="#" class="post-title">Avocado &amp; Oisters</a>
									<div class="post-meta">
										<a href="#" class="post-date">July 11, 2018</a> <a href="#"
											class="post-author">By Julia Stiles</a>
									</div>
								</div>
							</div>

							<!-- Single Post Area -->
							<div class="single-post-area d-flex">
								<!-- Blog Thumbnail -->
								<div class="blog-thumbnail">
									<img src="${path}/resources/img/bg-img/15.jpg" alt="">
								</div>
								<!-- Blog Content -->
								<div class="blog-content">
									<a href="#" class="post-title">Tortilla prawns</a>
									<div class="post-meta">
										<a href="#" class="post-date">July 11, 2018</a> <a href="#"
											class="post-author">By Julia Stiles</a>
									</div>
								</div>
							</div>

							<!-- Single Post Area -->
							<div class="single-post-area d-flex">
								<!-- Blog Thumbnail -->
								<div class="blog-thumbnail">
									<img src="${path}/resources/img/bg-img/16.jpg" alt="">
								</div>
								<!-- Blog Content -->
								<div class="blog-content">
									<a href="#" class="post-title">Burger with fries</a>
									<div class="post-meta">
										<a href="#" class="post-date">July 11, 2018</a> <a href="#"
											class="post-author">By Julia Stiles</a>
									</div>
								</div>
							</div>
						</div>

						<!-- Single Widget Area -->
						<div class="single-widget-area newsletter-widget mb-30">
							<h6>Subscribe to newsletter</h6>
							<form action="#" method="post">
								<input type="search" name="widget-search" id="widgetSearch"
									placeholder="E-mail">
								<button type="submit" class="btn bueno-btn w-100">Subscribe</button>
							</form>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<div class="pagination-area mt-70">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<c:if test="${pm.prev}">
								<li class="page-item"><a class="page-link" href="${pm.startPage-1}">◀</a></li>
								</c:if>
								<c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="i">
								<c:if test="${pm.cri.page==i}">
								<li class="page-item"><a class="page-link " href="${i}">${i}</a></li>
								</c:if>
								<c:if test="${pm.cri.page!=i}">
								<li class="page-item "><a class="page-link" href="${i}">${i}</a></li>
								 </c:if>
								
							         </c:forEach>
							          <c:if test="${pm.next}">
								<li class="page-item"><a class="page-link" href="${pm.endPage+1}">▶</a></li>
							         </c:if>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<form name="frm3">
		<input type="hidden" name="page" value="1">
		<input type="hidden" name="searchType" value="">
		<c:if test="${pm.cri.mcode != null}">
			<input type="hidden" name="mcode" value="">
		</c:if>
		<c:if test="${pm.cri.lcode != null}">
			<input type="hidden" name="lcode" value="">
		</c:if>
		<input type="hidden" name="keyword" value="">
		
	</form>
	<!-- ##### Catagory Post Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-12 col-sm-5">
					<!-- Copywrite Text -->
					<p class="copywrite-text">
						<a href="#">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with 
							<i>class="fa fa-heart-o" aria-hidden="true"></i> by 
							<a><href="https://colorlib.com"  target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					  </a>
					</p>
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
      $("#bye").hide();
	
      $(".pagination li a").click(function(e){
  		e.preventDefault();
  		var searchType ="${pm.cri.searchType}";
  		var keyword="${pm.cri.keyword}";
  		var mcode="${pm.cri.mcode}";
  		var lcode="${pm.cri.lcode}";
  		$(frm3.page).val($(this).attr("href"));
  		$(frm3.searchType).val(searchType);
  		$(frm3.keyword).val(keyword);
  		$(frm3.mcode).val(mcode);
  		$(frm3.lcode).val(lcode);
  		$(frm3).submit();
  	});
	  
	  $("#first").on("click",function(){
		  $("#bye").hide();
		  $("#hi").show();
		
		    
	  });
	  $("#second").on("click",function(){
		  $("#hi").hide();
		  $("#bye").show();
		  
	  });
		var encode=decodeURI(document.location.search.split("keyword=")[1]);
		if(encode!="undefined"&&encode!=""){
			
	 	 	$("#keyword").html(encode+" 의 검색결과 입니다.");
		}
</script>
</html>