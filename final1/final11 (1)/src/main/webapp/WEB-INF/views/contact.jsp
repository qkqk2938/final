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
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Cafe人 - 카페를 좋아하는 사람들</title>
 <c:set var="path" value="${pageContext.request.contextPath}"/>
    <!-- Favicon -->
     <link rel="icon" href="${path}/resources/img/core-img/favicon2.png.jpg">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="${path}/resources/css/style.css">
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script> 
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4c9947b8b0448265ca15036c39a7fa4e&libraries=services,clusterer,drawing"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4c9947b8b0448265ca15036c39a7fa4e"></script>

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

    <!-- ##### Search Area Start ##### -->
    
    <!-- ##### Search Area End ##### -->

    <!-- ##### Contact Area Start ##### -->
    <section class="contact-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8 col-xl-9">
                    <div class="contact-content mb-100">
                        <h4 class="mb-50">We love seeing your feedback</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tristique justo id elit bibendum pharetra non vitae lectus. Mauris libero felis, dapibus a ultrices sed, commodo vitae odio. Sed auctor tellus quis arcu tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac tincidunt nunc. Cras sed mollis erat.</p>

                        <div class="row align-items-center mt-30 mb-50">
                            <div class="col-12 col-lg-4">
                                <!-- Single Contact Info -->
                                <div class="single-contact-info d-flex align-items-center">
                                    <div class="icon mr-15">
                                        <img src="${path}/resources/img/core-img/placeholder.png" alt="">
                                    </div>
                                    <p>학익동 663-1번지 5층 남구 인천광역시 KR 인천일보아카데미</p>
                                </div>

                                <!-- Single Contact Info -->
                                <div class="single-contact-info d-flex align-items-center">
                                    <div class="icon mr-15">
                                        <img src="${path}/resources/img/core-img/smartphone.png" alt="">
                                    </div>
                                    <p>+010 6651 8393</p>
                                </div>

                                <!-- Single Contact Info -->
                                <div class="single-contact-info d-flex align-items-center">
                                    <div class="icon mr-15">
                                        <img src="${path}/resources/img/core-img/message.png" alt="">
                                    </div>
                                    <p>yxk12121@gmail.com</p>
                                </div>
                            </div>
                            <div class="col-12 col-lg-8">
                                <!-- ##### Google Maps ##### -->
                                <div id="map" style="width: 500px; height: 353px;"></div>
						</div>
						<script>
							var x = $(this).attr("x");
							var y = $(this).attr("y");
							var container = document.getElementById('map');
							var options = {
								center : new kakao.maps.LatLng(37.438883173433155,
										126.67511309793584),
								level : 3
							};

							var map = new kakao.maps.Map(container, options);

							// 마커가 표시될 위치입니다 
							var markerPosition = new kakao.maps.LatLng(
									33.45798351, 126.9099952);

							// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
								position : markerPosition
							});

							// 마커가 지도 위에 표시되도록 설정합니다
							marker.setMap(map);
						</script>
                            </div>
                        </div>

                        <!-- Contact Form Area -->
                        <div class="contact-form-area mb-70">
                            <h4 class="mb-50">Get In Touch</h4>

                            <form id="frm" method="post"  data-email="example@email.net" action="https://script.google.com/macros/s/AKfycbwsVm-7U5VmB_7pVgfAoQWzIEQJtEMonuQIZOK6ig/exec">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="name" placeholder="Name">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="email" placeholder="E-mail">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn bueno-btn mt-30" type="button" id="btn">Send</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>

               
    <!-- ##### Contact Area End ##### -->

    <!-- ##### Instagram Area Start ##### -->

    <!-- ##### Instagram Area End ##### -->

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

$("#frm").on("click","#btn",function(){
	
	if(!confirm("메일을 보내시겠습니까?")) return;
	var name=$("#name").val();
	var message=$("#message").val(); 
	var email=$("#email").val();
	var url="https://script.google.com/macros/s/AKfycbwsVm-7U5VmB_7pVgfAoQWzIEQJtEMonuQIZOK6ig/exec";
	
	  $.ajax({
		type:"post",
		url:url,
		dataType:"json",
		data:{"name":name,"message":message,"email":email},
		success:function(data){
				alert("메일발송이 완료되었습니다.");
				location.href="/final/";	
		}
	
	
	});
	
	
});


</script>
</html>