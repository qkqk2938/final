<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type = "text/javascript" src = "https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>네이버 로그인 중</h1> 

<form action = "insert" method="post" name = "frm" enctype="multipart/form-data">
<input type = "hidden" name = "gid" id = "gid">
<input type = "hidden" name = "gname" id = "gname">
<input type = "hidden" name = "gimage" id = "gimage">
<input type = "hidden" name = "gbirth" id = "gbirth">
<input type = "hidden" name = "gnickname" id = "gnickname">
<input type = "hidden" name = "gemail" id = "gemail">
<input type = "hidden" name = "ggender" id = "ggender">
<input type = "hidden" name = "gpass" id = "gpass">
<input type = "hidden" name = "gtel" id = "gtel">
<input type = "hidden" name = "gaddr" id = "gaddr">
<input type="file" name="file">
</form>


</body>
<script type="text/javascript">
$(frm.file).hide();    
        var naver_id_login = new naver_id_login("JYhKPQwaLJ1ye3FTdMDW", "http://localhost:8080/final/login_result"); 
       
        // 접근 토큰 값 출력
        
        
        // 네이버 사용자 프로필 조회
        naver_id_login.get_naver_userprofile("naverSignInCallback()");
        
        // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
        function naverSignInCallback() {
          $("#gemail").val(naver_id_login.getProfileData('email'));
          $("#gimage").val(naver_id_login.getProfileData('profile_image')) ;
         
          
            var gender=naver_id_login.getProfileData('gender');
          if(gender=="M"){
            	$("#ggender").val("남");
            }else if(gender=="WM"){
            	$("#ggender").val("여");
            }
          
            $("#gname").val(naver_id_login.getProfileData('name'));
            $("#gnickname").val(naver_id_login.getProfileData('nickname'));
            $("#gage").val(naver_id_login.getProfileData('age'));                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
            $("#gbirth").val(naver_id_login.getProfileData('birthday'));
            $("#gid").val(naver_id_login.getProfileData('name')+naver_id_login.getProfileData('id'));
            var gid = $("#gid").val();
            
            $.ajax({
            	
            	type:"get",
            	url:"chkid",
            	data:{"gid": gid},
            	success:function(data){
            		
            		if(data==1){
            			  
            			  
            			  frm.action = "prelogin";
            			 
            			 
            			  frm.submit();
            		}else{
            			  frm.submit();
            		}
            	}
            	
            	
            })
            
          
            
        }
      
    </script>

</html>