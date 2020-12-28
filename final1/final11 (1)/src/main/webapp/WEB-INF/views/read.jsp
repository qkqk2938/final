<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4c9947b8b0448265ca15036c39a7fa4e&libraries=services,clusterer,drawing"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4c9947b8b0448265ca15036c39a7fa4e"></script>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- Favicon -->
<link rel="icon" href="${path}/resources/img/core-img/favicon2.png.jpg">

<!-- Stylesheet -->
<link rel="stylesheet" href="${path}/resources/css/style.css">

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

	<!-- ##### Header Area Start ##### -->
	<jsp:include page="header.jsp"/>
		
	<!-- ##### Header Area End ##### -->

	<!-- ##### Treading Post Area Start ##### -->
	<jsp:include page="secmenu.jsp"/>
	<!-- ##### Treading Post Area End ##### -->

	<!-- ##### Post Details Area Start ##### -->
	<section class="post-news-area section-padding-100-0 mb-70">
		<div class="container">
			<div class="row justify-content-center">
				<!-- Post Details Content Area -->
				<div class="col-12 col-lg-4 col-xl-5">
					<div class="post-details-content mb-100">
						<div class="blog-thumbnail mb-50">
<style>
#darken-background {
	position: fixed;
	top: 0px;
	left: 0px;
	right: 0px;
	height: 100%;
	display: none;
	background: rgba(0, 0, 0, 0.5);
	z-index: 10000;
	overflow-y: scroll;
}

#lightbox {
	width: 700px;
	margin: 20px auto;
	padding: 15px;
	border: 1px solid #333333;
	border-radius: 5px;
	background: white;
	box-shadow: 0px 5px 5px rgba(34, 25, 25, 0.4);
	text-align: center;
}
.swiper-container {
  width: 445px;
  height: 370px;
}
.swiper-slide {
  text-align: center;
  font-size: 18px;
  background: #fff;

  /* Center slide text vertically */
  display: -webkit-box;
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  -webkit-justify-content: center;
  justify-content: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
  -webkit-align-items: center;
  align-items: center;
}
</style>
						<!-- Swiper -->
	<div class="swiper-container">
		<div class="swiper-wrapper">
			<c:forEach items="${cafeImage}" var="image">
				<div class="swiper-slide"><img style="height:370px;" src="display?fileName=cafeimage/${image.image}"></div>
			</c:forEach>
		</div>
		<!-- Add Arrows -->
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
	</div>

	<!-- Swiper JS -->
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

	<!-- Initialize Swiper -->
						</div>
						<div class="blog-content">
							<a href="#" class="post-tag">Category</a>
							<h4 class="post-title">${vo.cname}</h4>
							<div class="post-meta mb-50">
								<a href="#" class="post-date">${vo.caddr}</a> <a href="#"
									class="post-author">${vo.ctel}</a>
							</div>
							<h4>
								Best Review <button style="float: right; font-size: 13px;background-color: transparent !important;border:none;" onClick="location.href='reply?ccode=${vo.ccode}'">더보기<img
									src="${path}/resources/img/core-img/add.png"></button>
							</h4>
							<div class="bestReview"></div>
							<script id="tempBR" type="text/x-handlebars-template">
							{{#each br}}
								<div class="best" style="width: 445px; height: 190px; overflow: hidden;">
									<div
										style="width: 110px; height: 170px; padding: 10px; margin: 5px; color: white; float: left; font-size: 15px; text-align: center;">
										<img style="width:90px;height:90px;" src="{{gmember gimage}}" alt="">
										<div style="width: 90px; height: 20px; margin-bottom: 3px; font-size: 16px; line-height: 1.3; text-align: center; word-break: break-all; color: #555555;">{{gnickname}}</div>
										<div style="width: 90px; height: 20px; margin-bottom: 3px;margin-top:2px; font-size: 14px; line-height: 1.3; text-align: center; word-break: break-all; color: #555555;"><button rcode="{{rcode}}" class="btnGood" style="border:none;background-color: transparent !important;"><img style="width:15px;height:15px;" src="{{check good}}">&nbsp;좋아요</button>{{count}}개</div>		
									</div>
									
									<div class="review" style="cursor:pointer;width: 300px; height: 180px; padding: 10px; margin: 5px; color: white; float: left; font-size: 15px; text-align: center;">
										<span style="width: 70px; height: 20px; margin-bottom: 2px; color: #000000; line-height: 1.3; word-break: break-all;">{{dateFormat rdate}}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;평점: {{rscope}}점</span>
										
										<p>{{rcontent}}</p>
									</div>
								</div>
								<div class="reviewImage" rcode="{{rcode}}" content="{{rcontent}}"></div>
								{{#isVowel}}
									<div gid={{gid}} style="text-align:right;"><button style="background-color: transparent !important;border:none;" onClick="location.href='reviewUpdate?rcode={{rcode}}&ccode={{ccode}}'">수정</button> / <button id="reviewDelete" rcode="{{rcode}}" style="background-color: transparent !important;border:none;">삭제</button></div>
								{{else}}
									<div></div>
								{{/isVowel}}
							<hr>
							{{/each}}	
							</script>			
						</div>
					</div>
				</div>
				<div id="darken-background">
					<div id="lightbox">
						<img id="image" src="http://placehold.it/300x400" width=300>
						<div id="contents" style="font-weight: bold; padding: 10px;"></div>
						<div>
							<button id="btnClose">닫기</button>
						</div>
					</div>
				</div>
				<script>
				Handlebars.registerHelper('isVowel', function(options) {
					  var regexp = '<%=session.getAttribute("gid")%>';
					  if (regexp==(this.gid)) {
					    return options.fn(this);
					  } else {
					    return options.inverse(this);
					  }
					});
				Handlebars.registerHelper("check", function(good) {
					if(good==0){
				   		return "${path}/resources/img/core-img/heart_no.png";
					}else{
						return "${path}/resources/img/core-img/heart_color.png";
					}
				   });
				Handlebars.registerHelper("dateFormat", function(rdate) {
				       return new Handlebars.SafeString(
				           moment(rdate).format("YYYY년MM월DD일").toUpperCase()
				       );
				   });
				Handlebars.registerHelper("gmember", function(gimage) {
					if(gimage==null){
				   		return "http://placehold.it/90x90";
					}else{
						return "display?fileName="+gimage;
					}
				});
				goodCount();
				function goodCount(){
					var ccode="${vo.ccode}";
					$.ajax({
						type:"get",
						url:"bestReview",
						data:{"ccode":ccode},
						success:function(data){
							var temp=Handlebars.compile($("#tempBR").html());
					         $(".bestReview").html(temp(data));

					         $(".btnGood").on("click",function(){
									var ccode="${vo.ccode}";
									var rcode=$(this).attr("rcode");
									var img=$(this).children("img");
									var isLogin ='<%=session.getAttribute("gid")%>' == 'null' ? false: true;
									if(isLogin){
										$.ajax({
											type:"post",
											url:"good",
											data:{"rcode":rcode},
											success:function(data){
												if(data==1){
													goodCount();
												}else{
													goodCount();
												}
											}
										});
									}else{
										location.href="good?ccode="+ccode;
									}
								});
					         $(".reviewImage").each(function(){
									var reviewImage = $(this);
									var rcode=$(this).attr("rcode");
									$.ajax({
										type:"get",
										url:"reviewImage",
										data:{"rcode":rcode},
										success:function(data){
											var str="";
											$.each(data,function(index,items){
												str += "<img style='margin:10px;' src='display?fileName="+items+"' width=100>";
												reviewImage.html(str);
											});
										}
									});
								});
					         
								$(".best").on("click",".review",function(){
									  var img=$(this).parent().next();
									  var src=img.children().attr("src");  
								      var content=img.attr("content");
								      $("#image").attr("src",src);
								      $("#contents").html(content);
								      $("#darken-background").show();
								   });
								   $("#btnClose").on("click",function(){
								      $("#darken-background").hide();

								   });
								   $("#reviewDelete").on("click",function(){
										var rcode=$(this).attr("rcode");
										if(!confirm("정말로 삭제하실건가요?")) return;
										$.ajax({
											type:"post",
											url:"reivewDelete",
											data:{"rcode":rcode},
											success:function(){
												alert("삭제되었습니다.");
											}
										});
									});
					         
						}
						
					});
				}
				
				</script>
				<div class="col-12 col-lg-4 col-xl-4">
					<!-- Info -->
					<div class="recipe-info">
						<h5>Info</h5>
						<ul class="info-data">
							<li><img src="${path}/resources/img/core-img/eye.png" alt="">
								<span id="viewCnt">1,577 Views(조회수)</span></li>
							<li><img src="${path}/resources/img/core-img/review.png"
								alt=""> <span id="totalReview">리뷰 수</span></li>
							<li><img src="${path}/resources/img/core-img/favorites.png"
								alt=""> <span id="totalFavorites">즐겨찾기 수</span></li>
							<li><img src="${path}/resources/img/core-img/scope.png"
								alt=""> <span id="avgScope">평점</span></li>
						</ul>
					</div>
					<!-- Ingredients -->
					<div class="ingredients">
						<h5>카페 메뉴</h5>

						<!-- Custom Checkbox -->
						<c:forEach items="${menu}" var="menu">
							<div class="custom-control custom-checkbox" style="overflow:hidden;">
								<div style="width:100px;height:85px;float:left;margin-right:30px;"><img style="width:90px;height:90px;" src="display?fileName=menuimages/${menu.image}"></div>
								<div style="width:110px;height:85px;float:left;"><div><b style="font-size:20px;">${menu.menu}</b></div><span><fmt:formatNumber value="${menu.price}" pattern="#,###"/>원</span></div>
							</div>	
						</c:forEach>	
					</div>
				</div>

				<!-- Sidebar Widget -->
				<div class="col-12 col-sm-9 col-md-6 col-lg-4 col-xl-3">
					<div class="sidebar-area">

						<!-- Single Widget Area -->
						<div class="single-widget-area author-widget mb-30">
							<div class="background-pattern bg-img"
								style="background-image: url(${path}/resources/img/core-img/pattern2.png);">
								<div class="author-thumbnail">
									<c:if test="${vo.cimage==null}">
									<img src="${path}/resources/img/bg-img/23.jpg" alt="">
									</c:if>
									<c:if test="${vo.cimage!=null}">
									<img src="display?fileName=${vo.cimage}" alt="">
									</c:if>
								</div>
								<div>
									<button id="btnReview" style="background-color: transparent !important;border:none;margin-bottom:10px;margin-rigth:10px;" onClick="location.href='reviewInsert?ccode=${vo.ccode}'"><img src="${path}/resources/img/core-img/review.png"
								alt=""><span style="font-size: 0.8rem;">리뷰쓰기</span></button>
									<button id="btnFavorite" style="background-color: transparent !important;border:none;"><span id="favorites" style="font-size:29px;"><img style="width:30px;height:30px;" src=""></span><span style="font-size: 0.8rem;">즐겨찾기</span></button>
								</div>
							</div>
							<div class="social-info">
								<a
									href="https://section.blog.naver.com/Search/Post.nhn?pageNo=1&rangeType=ALL&orderBy=sim&keyword=${vo.cname}"><img
									src="${path}/resources/img/core-img/naver.jpg" alt=""></i></a> <a
									href="http://search.daum.net/search?w=blog&f=section&m=&SA=daumsec&lpp=10&nil_profile=vsearch&nil_src=blog&q=${vo.cname}"><img
									src="${path}/resources/img/core-img/daum.jpg" alt=""></i></a>
							</div>
						</div>

						<!-- Single Widget Area -->
						<div class="single-widget-area add-widget mb-30">
							<div id="map" style="width: 255px; height: 353px;"></div>
						</div>
						<!-- Single Widget Area 주변 카페 -->
						<div class="single-widget-area post-widget mb-30"></div>
						<script id="temp" type="text/x-handlebars-template">
							{{#each list}}
							<div class="single-post-area d-flex" style="cursor:pointer;" ccode={{ccode}} x={{x}} y={{y}}>
								<div class="blog-thumbnail">
										<img src="{{isImage cimage}}" alt="">
								</div>
								<div class="blog-content">
									<span class="post-title"><b>{{cname}}</b></span>
									<div class="post-meta">
										<span class="post-date">{{cutting caddr}}</span> 					
									</div>
									<div class="post-meta">
										<span class="post-author">{{rscope}}점</span>					
									</div>

								</div>
							</div>
							{{/each}}
						</script>
						<script>
						Handlebars.registerHelper("cutting", function(caddr) {
							return caddr.split(" ",2)[0]+" "+caddr.split(" ",2)[1];
						});
						Handlebars.registerHelper("isImage", function(cimage) {
							if(cimage==""||cimage==null){
						   		return "${path}/resources/img/bg-img/12.jpg";
							}else{
								return "display?fileName="+cimage;
							}
						});
						</script>
						<!-- Single Widget Area -->
						<div class="single-widget-area newsletter-widget mb-30">
							<h5>카페 느낌(태그)</h5>

						<!-- Custom Checkbox -->
						<c:forEach items="${tag}" var="t">
						<div class="custom-control custom-checkbox">
							<label class="custom-control-label" for="customCheck1"><a
								href="">${t.tag}</a></label>
						</div>
						</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	
	<!-- ##### Instagram Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-12 col-sm-5">
					<!-- Copywrite Text -->
					<p class="copywrite-text">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
var ccode="${vo.ccode}";
getTotalFavorites();
getNearbyCafe();
function getTotalFavorites(){
	$.ajax({
		type:"get",
		url:"info.json",
		data:{"ccode":ccode},
		success:function(data){
			var scope=Number(data.scope);
			$("#totalFavorites").html(data.favorites+" 명");
			$("#totalReview").html(data.review+" 개");
			$("#viewCnt").html(data.vo.viewcnt+" 회");
			$("#avgScope").html(scope.toFixed(1)+" 점");
			if(data.favorite==1){
				$("#favorites").children("img").attr("src","${path}/resources/img/core-img/free_staron.png");
			}else{
				$("#favorites").children("img").attr("src","${path}/resources/img/core-img/free_star.png");
			}
		}
	});
}
function getNearbyCafe(){
	$.ajax({
		type:"get",
		url:"nearbysearch.json",
		data:{"ccode":ccode},
		success:function(data){
			var temp=Handlebars.compile($("#temp").html());
	         $(".single-widget-area.post-widget.mb-30").html(temp(data));
		}
	});
}
$(".single-widget-area.post-widget.mb-30").on("click",".single-post-area.d-flex",function(){
	var ccode=$(this).attr("ccode");
	location.href = "read?ccode=" + ccode;
});
				$(".single-instagram").on("click",function(e){
					e.preventDefault();
					  var img=$(this).children("img");
				      var src=img.attr("src");
				      var contents=img.attr("contents");
				      $("#image").attr("src",src);
				      $("#contents").html(contents);
				      $("#darken-background").show();
				   });
				   $("#btnClose").on("click",function(){
				      $("#darken-background").hide();
				   });
				   var swiper = new Swiper('.swiper-container', {
					      navigation: {
					        nextEl: '.swiper-button-next',
					        prevEl: '.swiper-button-prev',
					      },
					    });
	
					$("#btnFavorite").on("click",function(){
						var ccode="${vo.ccode}";
						var isLogin ='<%=session.getAttribute("gid")%>' == 'null' ? false
								: true;
						//값이 true면 로그인이 된 상태 false면 로그인이 되지 않은 상태 
						if (isLogin) { // favorite post로 인하여 ajax처리되어 즐겨찾기 
							$.ajax({
								type : "post",
								url : "favorite",
								data : {
									"ccode" : ccode
								},
								success : function(data) {
									if (data == 1) {
										alert("즐겨찾기를 등록 하셨습니다.");
										getTotalFavorites();
									} else {
										alert("즐겨찾기를 해제 하셨습니다.");
										getTotalFavorites();
									}
								}
							});
						} else {
							location.href = "favorite?ccode=" + ccode; //favorite get으로 이동하여 interceptor 적용 login page 이동
						}
					});
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng("${vo.y}", "${vo.x}"),
		level : 3
	};

	var map = new kakao.maps.Map(container, options);

	// 마커가 표시될 위치입니다 
	var markerPosition = new kakao.maps.LatLng("${vo.y}", "${vo.x}");

	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
		position : markerPosition
	});

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
	var iwContent = '<div style="padding:3px;">${vo.cname}</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

	// 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
	    content : iwContent
	});

	// 마커에 마우스오버 이벤트를 등록합니다
	kakao.maps.event.addListener(marker, 'mouseover', function() {
	  // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
	    infowindow.open(map, marker);
	});

	// 마커에 마우스아웃 이벤트를 등록합니다
	kakao.maps.event.addListener(marker, 'mouseout', function() {
	    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
	    infowindow.close();
	});
</script>

</html>