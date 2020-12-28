
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
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<style>
 #ment{background:#f8f8f8;margin-bottom:10px; font-size:20px; width:100%}
 h2{text-align:center; margin:auto; }
 #center{text-align:center; margin-top:30px;}
 #image2{width:100px;height:100px}
</style>
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
  
  
  <div class="catagory-post-area section-padding-100" >
       
      <div  class="container">
       
      <div id="hi" class="row justify-content-center">

   <form name="frm" id = "frm" action="cafeupdate" method="post"
      enctype="multipart/form-data">
      <div id="ment"><b>카페 수정</b></div>
      <table>
         <tr style="height:50px;">
            <th width=100>카페이름</th>
            <td width=500><input type="text" value="${vo.cname }" name="cname" size=50 ></td>
         </tr>
         <tr style="height:50px;">
            <th width=100>카페전화번호</th>
            <td width=500><input type="text" value="${vo.ctel }" name="ctel" size=20></td>
         </tr>
         
         <tr style="height:50px;">
            <td>카페 주소</td>
            <td>
               <input type="text" id="address1"  value="${vo.caddr }" size=30>
               <input type="text" id="address2" placeholder="상세주소" size=30>
               <input type="hidden" name="caddr">
               <input type="hidden" name="ccode" value="${vo.ccode}">
            </td> 
         </tr>
         <tr style="height:50px;">
            <td>카페 메뉴</td>
            
            <td>
         <input id = "menu" placeholder="메뉴" style="margin-right:10px;"><input id = "price"  placeholder="가격" type = number><input type = "button" value="추가" id = "btnaddmenu">
         <input type = hidden name="cmenu">
            <table id = "addmenu">
             <c:forEach items ="${menu }" var = "menu" >
           <tr class = row><td class =menuname>${menu.menu }</td><td class =menuprice>${menu.price }</td><td><input type=file name=imageFile><input type =button value = 삭제 class=btndeletemenu></td></tr>
 		 </c:forEach>
            </table>
         </td>
         </tr>
            <tr style="height:100px;">
               <th>카페 소개글</th>
               <td><textarea  name = "ccontent" cols="35" rows="4"  >${vo.ccontent }<c:forEach items="${tag}" var ="tag">#${tag.tag }</c:forEach>
               </textarea></td>
            </tr>
         <tr style="height:120px;">
            <th width=100>대표이미지</th>
            <td width=500>
            <img src = "display?fileName=${vo.cimage }" id = "image" style="width:100px; height:100px;">
            <input type="file" name="file" style="display:none"></td>
         </tr>
         <tr style="height:110px; max-height:110px;overflow-y: auto;">
            <th width=100 height=100>첨부이미지</th>
            <td style="height:110px; max-height:110px; width:800px;"  >
            <input type="button" id = "btnImage" value="+" style="width:100px; height:100px;line-height:89px;border: 1px dashed #DBDBDB;cursor: pointer;opacity: 1;transform: scale(1);">
            <input type="file" name="files" style="display:none" multiple>
            <span id = "listFile">
            <c:forEach items = "${cafeImage}" var= "images">
            <img id=image2 src="display?fileName=cafeimage/${images.image}">
            </c:forEach>
            </span>
            </td>
            
            
            </tr>
         
      </table>
      <div id="center">
      <input type = "submit" value = "저장" style="background:#b0c364; width:80px; border-radius:5px; border:white">
      <input type = "reset" value = "취소" style="background:#b0c364; width:80px; border-radius:5px; border:white">
      <input type = "button" value = "미리보기" id = "miribogi" style="background:#b0c364; width:80px; border-radius:5px; border:white">
              </div>
   </form>


</div>
</div>
</div>






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

function openPop(){
    
    
    var pop_title = "popupOpener" ;
     
 
    window.open("", pop_title,"width = 1500, height = 800, top = 100, left = 200, location = no") ;
    
    var frm = document.frm ;
    frm.target = pop_title ;
    frm.action = "miribogi" ;
     
    frm.submit() ;
     
     
     
}
$("#miribogi").on("click",function(){
    openPop();
     
});
$("#btnaddmenu").on("click",function(){
   var menu = $("#menu").val();
   var price = $("#price").val();
   
   var str="<tr class = row><td class =menuname>"+menu+"</td><td class =menuprice>"+price+"</td>"+"<td><input type=file name=imageFile><input type =button value = 삭제 class=btndeletemenu></td></tr>";
   $("#addmenu").append(str);
   
});
$("#addmenu").on("click",".row .btndeletemenu",function(){
var row = $(this).parent().parent().parent().parent();
   row.remove();
});
$(frm.address1).click(function(){
    new daum.Postcode({
        oncomplete: function(data) {
            $(frm.address1).val(data.address);
        }
    }).open();
});  


   $(frm).on("submit",function(e){
      e.preventDefault();
      var addr = $("#address1").val()+" "+$("#address2").val();
      $(frm.caddr).val(addr);
      
      var menu ="";
      
      $("#addmenu .row").each(function(index, item){
         var menuname = $(this).find(".menuname");   
         var menuprice = $(this).find(".menuprice");
         
         var str = menuname.text()+","+menuprice.text()+",";
         
         menu += str;
         
        
         
      });
   
      $(frm.cmenu).val(menu);
      if(!confirm("저장하시겠습니까?")) return;
      frm.submit();
   });
   
   
   $("#btnImage").on("click",function(){
      $(frm.files).click();
   });
   $("#image").on("click",function(){
      $(frm.file).click();
   });
   
   $(frm.file).on("change",function(){
      var file = $(frm.file)[0].files[0];
      $("#image").attr("src",URL.createObjectURL(file));
   });
   
   $(frm.files).on("change",function(){
      
      
      var files = $(frm.files)[0].files;
      var str="";
      
      $.each(files,function(index, file){
         str += "<img id=image2 src='"+URL.createObjectURL(file)+"'>";
      });
      
      $("#listFile").html(str);
      
      
   });
   </script>
</html>



