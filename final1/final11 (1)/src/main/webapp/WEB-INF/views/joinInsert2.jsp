<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<c:set var="path" value="${pageContext.request.contextPath}"/>
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
<body>
<header id="header" class="alt">
            <div class="inner">
               <h1><a href="/final/">Cafe人</a></h1>
               <p>Cafe人의 가족이 되신 것을 환영합니다</p>
               <p>점주 회원가입</p>
            </div>
         </header>
           <body style="background-color:white;">
         
          <table style="margin-top:50px;"></table>
        <form action="insert1" method="post">
        <div style="text-align:center;">
   <tr>
   <td width=100><input type="button" name="btn1" value="일반회원가입" onclick="location.href='joinInsert'"></td>
   <td width=100><input type="button" name="btn2" value="점주회원가입" onclick="location.href='joinInsert2'"></td>
   </tr>
  </div>
            <table style="margin-top:30px;">
               <tr>
                    <td style="color:#000000;font-weight:bold;">사업자 번호</td>
                    <td><input type="text" name="bcode" placeholder="사업자 번호를 등록하세요"  /></td>
                </tr>
                <tr>
                    <td style="color:#000000;font-weight:bold;">이름</td>
                    <td><input type="text" name="bname" placeholder="이름을 입력하세요" /></td>
                </tr>
                <tr>
                    <td style="color:#000000;font-weight:bold;">비밀번호</td>
                    <td><input type="password" name="bpass" placeholder="비밀번호를 입력하세요"/></td>
                </tr>
                
                <tr>
                    <td style="color:#000000;font-weight:bold;">전화번호</td>
                    <td><input type="text" name="btel" placeholder="번호를 입력하세요"/></td>
                </tr>
               
                <tr>
                    <td style="color:#000000;font-weight:bold;">생년월일</td>
                    <td><input type="text" id="testDatepicker" name="bbirth" placeholder="생일을 입력하세요"/></td>
                </tr>
               
                <tr>
                    <td style="color:#000000;font-weight:bold;">이메일</td>
                    <td><input type="text" name="bemail" placeholder="메일을 입력하세요"/></td>
                </tr>
                 <td colspan=2 style="color:#000000;font-weight:bold;"> 
                성별<br>
         <input type='radio' name='bgender' value='여'/>여성    
         <input type='radio' name='bgender' value='남'/>남성         
                </td>
                
            </table>
            <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" value="회원가입" style="text-align: center;">
        </form>    
</body>
<script>
$(function() {
    $( "#testDatepicker" ).datepicker({
    });
});

</script>
</html>