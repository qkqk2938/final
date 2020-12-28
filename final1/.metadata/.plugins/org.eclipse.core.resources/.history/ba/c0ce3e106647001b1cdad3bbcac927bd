<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   
<script type = "text/javascript" src = "https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

     
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!-- Favicon -->
     <link rel="icon" href="${path}/resources/img/core-img/favicon2.png.jpg">

<link rel="stylesheet" href="${path}/resources/css/main5.css" />
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>

<style>
h1{text-align:center}
#header{}
</style>
</head>
<body>


<header id="header" class="alt">
            <div class="inner">
               <h1><a href="/final/">Cafe人</a></h1>
               <p>Cafe人에 오신 것을 환영합니다</p>
               
            </div>
         </header>
  <h1></h1>
  
  <form name="frm" >
    <table border=1>
      <tr>
        <td width=100 style="color:#000000;font-weight:bold;">아이디</td>
        <td width=300><input type="text" name="gid" placeholder="아이디를 입력하세요"></td>
      </tr>
      <tr>
        <td style="color:#000000;font-weight:bold;" >비밀번호</td>
        <td><input type="password" name="gpass" placeholder="비밀번호를 입력하세요"></td>    
            </tr>
            <tr>
             <td colspan=2> 
             <input type="submit" value="login" width=100>
              <button type="button" onClick="location.href='joinInsert'">회원가입</button>
              <input type="checkbox" name="chkLogin">로그인상태유지
                          <div id = "naver_id_login"></div>  
                          <a id="custom-login-btn" href="login_result2"> 
         <img src="loginButton.png"/>
         </a>
             </td>
             </tr>
             
             
              </table> 
             
         
  </form>
  
  
</body>
<script type="text/javascript">
 
         var naver_id_login = new naver_id_login("JYhKPQwaLJ1ye3FTdMDW", "http://localhost:8080/final/login_result");    // Client ID, CallBack URL 삽입
                                            // 단 'localhost'가 포함된 CallBack URL
         var state = naver_id_login.getUniqState();
        
         naver_id_login.setButton("white",1, 40);
         naver_id_login.setDomain("http://192.168.219.102:8080/final/login");    //  URL
         naver_id_login.setState(state);
         naver_id_login.init_naver_id_login();
 

 $(frm).submit(function(e){
    e.preventDefault();
    var gpass= $(frm.gpass).val();
    var gid= $(frm.gid).val();
           var result="FAIL";
           var chkLogin= $(frm.chkLogin).is(":checked")? true: false;
    $.ajax({
      type:"post",
      url:"login",
      data:{"gid":gid,"gpass":gpass,"chkLogin":chkLogin},
      dataType:"json",
      success:function(data){
             
        if(data==0){
                    alert("아이디가 없습니다.");  
                    }else if(data==2){
                     alert("비밀번호가 틀립니다!");  
                  }else{ 
                        alert("로그인 되셨습니다.");                 
                        var dest = '<%=(String)session.getAttribute("dest")%>';
                        
                        if(dest !="null") {
                           location.href="/final/" + dest;
                        }else{
                           location.href="/final";
                        }  
                     
                  }
      }    
    })    
 });
 

</script>
</html>