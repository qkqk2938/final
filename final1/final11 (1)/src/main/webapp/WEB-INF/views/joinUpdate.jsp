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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<c:set var="path" value="${pageContext.request.contextPath}" />
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- Title -->
<title>Bueno - Food Blog HTML Template</title>

<c:set var="path" value="${pageContext.request.contextPath}" />
 
<!-- Favicon -->
<link rel="icon" href="${path}/resources/img/core-img/favicon2.png.jpg">

<!-- Stylesheet -->
<link rel="stylesheet" href="${path}/resources/css/style.css">
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

.container h1 {
	text-align: center;
	font-family: 'Jeju Gothic', sans-serif;
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
	<!-- ##### Treading Post Area Start ##### -->
	<jsp:include page="secmenu.jsp" />
	<!-- ##### Treading Post Area End ##### -->
	<div class="container">
		<br>
		<h1>회원정보수정</h1>
			<div id="bye">
				<jsp:include page="secmenu.jsp" />
			</div>
			<table border=1 style="margin-top: 30px; margin: auto;">

				<tr>
					<td width=100 style="color: #000000; font-weight: bold;">아이디</td>
					<td width=500><input type="text" id="gid" size=20
						value="${gid}" readonly="readonly"></td>
				</tr>
				<tr>
					<td width=100 style="color: #000000; font-weight: bold;">비밀번호</td>
					<td width=500><input type="password" id="gpass" size=25
						value="${vo.gpass}"></td>
				</tr>
				<tr>
					<td width=100 style="color: #000000; font-weight: bold;">이름</td>
					<td width=500><input type="text" id="gname" size=20
						value="${vo.gname}"></td>
				</tr>
				<tr>
					<td width=100 style="color: #000000; font-weight: bold;">생년월일</td>
					<td width=500><input type="date" id="gbirth" size=20 value="${vo.gbirth}"></td>
				</tr>
				<tr>
					<td width=100 style="color: #000000; font-weight: bold;">번호</td>
					<td width=500><input type="text" id="gtel" size=25
						value="${vo.gtel}"></td>
				</tr>
				
				<tr>
					<td width=100 style="color: #000000; font-weight: bold;">닉네임</td>
					<td width=500><input type="text" id="gnickname" size=20
						value="${vo.gnickname}"></td>
				</tr>
				<tr>
					<td width=100 style="color: #000000; font-weight: bold;">주소</td>
					<td width=500><input type="text" id="addr1" placeholder="주소를 입력하세요" size=20 value="${addr[0]}">&nbsp;&nbsp;
					상세주소<input type="text" id="addr2" placeholder="상세주소를 입력하세요" size=20 value="${addr[1]}">
					<input type="hidden" id="gaddr">
					</td>
				</tr>
				
				<tr>
					<td width=100 style="color: #000000; font-weight: bold;">이메일</td>
					<td width=500><input type="text" id="gemail" size=30
						value="${vo.gemail}"></td>
				</tr>
			<tr>
				<td width=100 style="color: #000000; font-weight: bold;">프로필사진</td>
				<td>
				<c:if test = "${vo.gimage == null }">
					<img src="http://placehold.it/150x120" id="image" width=150 />
				</c:if>
				<c:if test = "${vo.gimage != null }">
					<img src="/final/display?fileName=${vo.gimage }" id="image" width=150 />
				</c:if>
				<input
					type="file" id="file" value = "${vo.gimage}"/></td>
			</tr>


		</table>
			<div style="text-align: center; margin-top: 10px;">
				<button id="btnUpdate">수정</button>&nbsp;&nbsp; 
				<button type="reset">취소</button>
			</div>
			<div style="text-align: center; margin-top: 10px;">
			<button id = "showDelete">회원탈퇴</button>
			</div>
		
	</div>
	<div id = "delete" style="text-align: center; margin-top: 10px;">
		<input type = "password" id = "deletePass" placeholder="비밀번호를 입력하세요">
		<input type="button" id="btnDelete" value="확인">
	</div>
	
	
	
	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-12 col-sm-5">
					<!-- Copywrite Text -->
					<p class="copywrite-text">
						<a href="#"> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;<script>
								document.write(new Date().getFullYear());
							</script> All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
<script>
$("#addr1").click(function(){
	new daum.Postcode({
	    oncomplete: function(data) {
	    	$("#addr1").val(data.address);
	    }
	}).open();
});
	$("#file").on("change", function() {
		var file = $("#file")[0].files[0];
		$("#image").attr("src", URL.createObjectURL(file));
	});

	$("#btnUpdate").click(function() {
		var file = $("#file")[0].files[0];
		var addr = $("#addr1").val() + "#" + $("#addr2").val();
		if (!confirm("회원정보를 수정하시겠습니까?")) {
			return;
		} else {
			var formData = new FormData();
			formData.append("file", file);
			$("#gaddr").val(addr);
			$.ajax({
				type : "post",
				url : "/final/uploadProfileImage",
				processData:false, 
				contentType:false,
				data : formData,
				success : function(fullName) {
					$.ajax({
						type : "post",
						url : "/final/update",
						data : {
							"gid" : "${gid}",
							"gname" : $("#gname").val(),
							"gpass" : $("#gpass").val(),
							"gtel" : $("#gtel").val(),
							"gnickname" : $("#gnickname").val(),
							"gemail" : $("#gemail").val(),
							"gbirth" : $("#gbirth").val(),
							"gimage" : fullName,
							"gaddr" : $("#gaddr").val(),
						},
						success : function(data) {
							alert("회원 정보가 수정되었습니다.");
							location.href = '/final/';
						}
					});
				}
			});
 		}
	});

	$("#delete").hide();
	$("#showDelete").click(function() {
		$("#delete").show();
	});
	$("#btnDelete").click(function() {
		if (!confirm("회원 탈퇴하시겠습니까?")) {
			return;
		} else {
			$.ajax({
				type : "post",
				url : "/final/deleteUser",
				data : {
					"gid" : "${gid}",
					"gpass" : $("#deletePass").val()
				},
				success : function(data) {
					if (data) {
						alert("회원 탈퇴가 완료되었습니다.");
						location.href = '/final/logout';
					} else {
						alert("비밀번호가 틀렸습니다.");
					}
				}
			});
		}
	});
	$("#delete").keydown(function(key) {
		if (key.keyCode == 13) {
			$("#btnDelete").click();
		}
	});
</script>
</html>