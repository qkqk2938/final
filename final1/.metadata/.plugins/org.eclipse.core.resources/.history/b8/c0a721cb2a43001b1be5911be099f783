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
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Cafe人 - 카페를 좋아하는 사람들</title>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- Favicon -->
<link rel="icon" href="${path}/resources/img/core-img/favicon2.png.jpg">

<!-- Stylesheet -->
<link rel="stylesheet" href="${path}/resources/css/style.css">
<style>



.box img {
	float: left;
	box-shadow: 5px 5px 5px gray;
	
}

.title {
	font-size: 12px;
	text-align: center;
	font-weight: bold;
}

.price {
	font-size: 12px;
	text-align: center;
}

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
	
	width: 800px;
	height: 500px;
	margin:200px auto;
	
	border: 1px solid #333333;
	border-radius: 5px;
	background: white;
	box-shadow: 0px 5px 5px rgba(34, 25, 25, 0.4);
	
}
#btnClose{color:white; width:100px;}
</style>
</head>

<body>
	<!-- 시작시 뜨는 후라이팬 -->
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

	<!-- ##### Treading Post Area End ##### -->
	
	   <!-- ##### Instagram Area Start ##### -->
<jsp:include page="header.jsp"/>	   
	<div class="container" style="margin:auto;">
	
	<div class="instagram-feed-area d-flex flex-wrap" style="margin-top:100px;">
     
      <div >
       <div id="cimage" style="margin:auto;"><img src="display?fileName=${rlist.cimage} " width=150 height=150>
      <span id="name" style="font-size:30px;  margin-bottom:100px;">${rlist.cname}</span> 
    </div>
   <div id="gigi">
       <c:forEach items="${reviewlist}" var="vo">       
      <!-- Single Instagram -->
      <div class="single-instagram" style="margin-right: 70px; margin-top: 70px; float:left;">
         <img src="display?fileName=${vo.rimage}" alt="" style="width:300px; height:300px" >
         <input type="hidden" class="content" value="${vo.rcontent}" >
         <input type="hidden" class="nick" value="${vo.gid}" >
         <div class="pimage"><img src="display?fileName=${vo.gimage}"></div>
         <input type="hidden" class="rcode" value="${vo.rcode}" >
         <input type="hidden" class="ccode" value="${vo.ccode}">
         <!-- Image Zoom -->
     
      </div>
</c:forEach> 
</div>
</div>
</div>
   </div>
   
	<!-- ##### Instagram Area End ##### -->


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
							<i class="fa fa-heart-o" aria-hidden="true"></i> by 
							<a href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
			
			<script>
			Handlebars.registerHelper("printImg", function(img){
				if(!img) return "http://placehold.it/150x220"
				else return img;
     		});
		</script>

		<div id = "darken-background">
		<img src="${path}/resources/img/core-img/x.png" id="btnClose" alt="" style="float:right; width:30px;height:30px;margin:10px">
		
      <div id = "lightbox" style="">
		<div style="float:left; left:0px; bottom:0px;  ">
			<img id="image" src="http://placehold.it/222x296" style="width:500px; height:500px; " >
		</div>
			<img src="http://placehold.it/50x50" id="proimage" alt="" style="width:50px;height:50px; border-radius:50px;margin-top:20px;margin-left:20px;margin-bottom:50px;">
			
			<span id="nick" style="" ></span>
			<div id="here" style="height:50%; max-hight:50%; overflow-y: auto;">
			<div id="contents" style="margin-left:20px;margin-bottom:20px; margin-right:20px;" ></div>
			<div id="comment" style=""></div>
			<div class="rcode"></div>
			</div>
			<script id="temp" type="text/x-handlebars-template">
            {{#each .}}
                <div style="margin-left:20px"> <span><b>{{gid}}</b></span>:<span>{{rccontent}}</span> <span><p>{{rcdate}}</p></span></div>                          
	            <input type="hidden" id="rcode" value={{rcode}}>
                {{/each}}
			</script>
			
			 <span style="margin-left:20px;"><button class="btnGood" style="border:none;background-color: transparent !important;"></button></span>
			<textarea class="rccontent"  cols="35" rows="4" placeholder="Message" style=" margin-top:2%; margin-left:18px; "></textarea>
			
			
			<input type="button" id="btnInsert" style="border:0px; background:white;  margin-left:2%;"   value="게시" >
			<input type="hidden" class="gid" name="gid" value="${gid}">	  
				</div>	
		        
		</div>	
		
</body>
<script>
$(".pimage").hide();
$(".rcode").hide();
$("#btnInsert").on("click",function(){

	
	var gid1=$(this).parent().find(".gid");
	var gid2=gid1.val();
	var rccontent=$(this).parent().find(".rccontent");
	var rccontent1=rccontent.val();
	var rcode=$(this).parent().find("#here");
	var rcode1=rcode.find(".rcode").html();
	
	
	$.ajax({
 		type:"post",
 		url:"reinsert",
 		data:{"gid":gid2,"rccontent":rccontent1,"rcode":rcode1},
 		success:function(){
 			
 			 $.ajax({
          		type:"get",
          		url:"replycomment",
          		data:{"rcode":rcode1},
          		success:function(data){
          			
          			 
          		var temp=Handlebars.compile($("#temp").html());
          		
          	     $("#comment").html(temp(data));
     
		   }     
					
               });
 			
       }     
		
      });
  
})
            $(".single-instagram").on("click",function(e){
               e.preventDefault();
             
               var img=$(this).children("img");
               var src=img.attr("src");
               var contents=$(this).find(".content").val();
               var nick=$(this).find(".nick").val();
               var hi=$(this).children(".pimage");
               var pimage=hi.children("img");
               var pimage2=pimage.attr("src");
               var rcode=$(this).find(".rcode").val();
               $("#darken-background").show();	
               $("#image").attr("src",src);
                  $.ajax({
             		type:"get",
             		url:"replycomment",
             		data:{"rcode":rcode},
             		success:function(data){
             			
             		var temp=Handlebars.compile($("#temp").html());
             		
             	     $("#comment").html(temp(data));
             	     
             	     
                         $("#contents").html(contents);
                         $("#nick").html(nick);
                         
		     $("#proimage").attr("src",pimage2);   
		     $(".rcode").html(rcode);}     
					
                  });
              
                 		        		
                 		
                });

 
        
                               
        
            $("#btnClose").on("click",function(){
                  $("#darken-background").hide();
               });
//추가
$("#image").dblclick(function(){
    $(".btnGood").click();
});
goodCount();
function goodCount(){
	$(".single-instagram").on("click",function(){
		var rcode=$(this).children(".rcode").val();
		$.ajax({
			type:"get",
			url:"goodCount",
			data:{"rcode":rcode},
			success:function(data){
				var goodX="";
				var goodO="";
				if(data.userGood!=null){
					if(data.userGood==1){
						goodO += "<img style='width:15px;height:15px;' src='${path}/resources/img/core-img/heart_color.png'>";
						goodO += "&nbsp;좋아요&nbsp;";
						$(".btnGood").html(goodO+data.goodCount+"개");
					}else{
						goodX += "<img style='width:15px;height:15px;' src='${path}/resources/img/core-img/heart_no.png'>";
						goodX += "&nbsp;좋아요&nbsp;";
						$(".btnGood").html(goodX+data.goodCount+"개");
					}
				}else{
					goodX += "<img style='width:15px;height:15px;' src='${path}/resources/img/core-img/heart_no.png'>";
					goodX += "&nbsp;좋아요&nbsp;";
					$(".btnGood").html(goodX+data.goodCount+"개");
				}
			}
		});
	});
};
$(".btnGood").on("click",function(){
	var ccode=$(".ccode").val();
	var rcode=$(this).parent().parent().find("#here").find(".rcode").html();
	var isLogin ='<%=session.getAttribute("gid")%>' == 'null' ? false: true;
	if(isLogin){
		$.ajax({
			type:"post",
			url:"good",
			data:{"rcode":rcode},
			success:function(data){
				if(data==1){
					$.ajax({
						type:"get",
						url:"goodCount",
						data:{"rcode":rcode},
						success:function(data){
							var goodX="";
							var goodO="";
							if(data.userGood!=null){
								if(data.userGood==1){
									goodO += "<img style='width:15px;height:15px;' src='${path}/resources/img/core-img/heart_color.png'>";
									goodO += "&nbsp;좋아요&nbsp;";
									$(".btnGood").html(goodO+data.goodCount+"개");
								}else{
									goodX += "<img style='width:15px;height:15px;' src='${path}/resources/img/core-img/heart_no.png'>";
									goodX += "&nbsp;좋아요&nbsp;";
									$(".btnGood").html(goodX+data.goodCount+"개");
								}
							}else{
								goodX += "<img style='width:15px;height:15px;' src='${path}/resources/img/core-img/heart_no.png'>";
								goodX += "&nbsp;좋아요&nbsp;";
								$(".btnGood").html(goodX+data.goodCount+"개");
							}
						}
					});
				}else{
					$.ajax({
						type:"get",
						url:"goodCount",
						data:{"rcode":rcode},
						success:function(data){
							var goodX="";
							var goodO="";
							if(data.userGood!=null){
								if(data.userGood==1){
									goodO += "<img style='width:15px;height:15px;' src='${path}/resources/img/core-img/heart_color.png'>";
									goodO += "&nbsp;좋아요&nbsp;";
									$(".btnGood").html(goodO+data.goodCount+"개");
								}else{
									goodX += "<img style='width:15px;height:15px;' src='${path}/resources/img/core-img/heart_no.png'>";
									goodX += "&nbsp;좋아요&nbsp;";
									$(".btnGood").html(goodX+data.goodCount+"개");
								}
							}else{
								goodX += "<img style='width:15px;height:15px;' src='${path}/resources/img/core-img/heart_no.png'>";
								goodX += "&nbsp;좋아요&nbsp;";
								$(".btnGood").html(goodX+data.goodCount+"개");
							}
						}
					});
				}
			}
		});
	}else{
		alert("로그인이 필요합니다.");
		location.href="good1?ccode="+ccode;
	}
});
</script>
</html>