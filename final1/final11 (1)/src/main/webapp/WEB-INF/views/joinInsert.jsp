<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<c:set var="path" value="${pageContext.request.contextPath}"/>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>  
<title>Cafe人 - 카페를 좋아하는 사람들</title>
<!-- Favicon -->
     <link rel="icon" href="${path}/resources/img/core-img/favicon2.png.jpg">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
   <c:set var="path" value="${pageContext.request.contextPath}"/>
      <link rel="stylesheet" href="${path}/resources/css/main5.css"></head>
   
   <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  

<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
<body >
<header id="header" class="alt">
            <div class="inner">
               <h1><a href="/final/">Cafe人</a></h1>
               <p>Cafe人의 가족이 되신 것을 환영합니다</p>
               <p>일반 회원가입</p>
            </div>
         </header>
         <table style="margin-top:50px;"></table>
      <form name="frm" action="insert" method="post" enctype="multipart/form-data">
    <div style="text-align:center;">
   <tr >
   <td width=100><input type="button" id="btn1" value="일반회원가입" onclick="location.href='joinInsert'"></td>
   <td width=100><input type="button" id="btn2" value="점주회원가입" onclick="location.href='joinInsert2'"></td>
   </tr>
  </div>
           <div id="bye">
       <jsp:include page="secmenu.jsp" />
       </div>
       
      <table border=1 style="margin-top:30px">
      
         <tr>
            <td width=100 style="color:#000000;font-weight:bold;">아이디</td>
            <td width=500><input type="text" name="gid" size=50 placeholder="아이디를 입력하세요"></td>
         </tr>
            <tr>
            <td width=100 style="color:#000000;font-weight:bold;">비밀번호</td>
            <td width=500><input type="text" name="gpass" size=5 placeholder="비밀번호를 입력하세요"></td>
         </tr>
          <tr>
            <td width=100 style="color:#000000;font-weight:bold;">이름</td>
            <td width=500><input type="text" name="gname" size=5 placeholder="이름을 입력하세요"></td>
         </tr>
          <tr>
            <td width=100 style="color:#000000;font-weight:bold;">번호</td>
            <td width=500><input type="text" name="gtel" size=5 placeholder="전화번호를 입력하세요"></td>
         </tr>
          <tr>
            <td width=100 style="color:#000000;font-weight:bold;">생일</td>
            <td width=500 ><input type="text" id="testDatepicker" name="gbirth" size=5 placeholder="생일을 입력하세요"></td>
         </tr>
          <tr>
            <td width=100 style="color:#000000;font-weight:bold;">닉네임</td>
            <td width=500><input type="text" name="gnickname" size=5  placeholder="닉네임을 입력하세요"></td>
         </tr>
         
         <tr>
         <td width=100 style="color:#000000;font-weight:bold;">주소</td>
        <td width=500><input type="text" id="address1" placeholder="주소찾기" size=30></td>
        </tr>
        <tr>
        <td width=100 style="color:#000000;font-weight:bold;">상세주소</td>
       <td width=500><input type="text" id="address2" placeholder="상세주소" size=30></td>
      <input type="hidden" name="gaddr">
        </tr>
        
          <tr>
            <td width=100 style="color:#000000;font-weight:bold;">이메일</td>
            <td width=500><input type="text" name="gemail" size=5 placeholder="이메일을 입력하세요"></td>
         </tr>
         <tr>
            <td width=100 style="color:#000000;font-weight:bold; font-size:18px;">이미지</td>
            <td width=500>
               <img src="http://placehold.it/150x120" id="image" width=150>
               <input type="file" name="file">
         </tr>

                <td colspan=2 style="color:#000000;font-weight:bold;"> 
                성별<br>
            
         <input type='radio' name='ggender' value='여'/>여성    
         <input type='radio' name='ggender' value='남'/>남성               
                
</td>
</tr>
         
            </table>
            <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" value="회원가입" style="text-align: center; ">
            <input type = "hidden" name = "gimage" value="">
        </form>    
</body>
 <script>
 $(function() {
	    $( "#testDatepicker" ).datepicker({
	 

	    });
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
         $(frm.gaddr).val(addr);
      
         frm.submit();
      });
 
 $("#bye").hide();  
 
 $("#btn2").on("click",function(){
   
    $("#bye").show();    
 });
 
   $(frm.file).hide();
  
   
 
   $("#image").on("click", function(){
      $(frm.file).click();
   });
   
   $(frm.file).on("change", function(){
      var file=$(frm.file)[0].files[0];
      $("#image").attr("src", URL.createObjectURL(file));
   });
  
   
  </script> 
  
</html>