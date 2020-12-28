<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
 <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
   <script>
      Kakao.init('371a6350e4ece61cd145ad92b9a39d6e');
       console.log(Kakao.isInitialized());
   </script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>카카오 로그인 중</h1> 

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
loginWithKakao();
function loginWithKakao() {
    Kakao.Auth.login({
         success: function(authObj) {
            
            var token = authObj.access_token;

            Kakao.API.request({
                url: '/v2/user/me',
                success: function(response) {
                   
                   
                   var id = response.id;
                   var name = response.kakao_account.profile.nickname;
                   var email = response.kakao_account.email;
                   var gender = response.kakao_account.gender;
                   var birthday = response.kakao_account.birthday;
                   var image = response.kakao_account.profile.profile_image_url;
                   
                   $("#gid").val(name+id);
                   $("#gname").val(name);
                   $("#gimage").val(image);
                   $("#gbirth").val(birthday);
                   $("#gemail").val(email);
                   $("#ggender").val(gender);
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
                   
                  
                   
                },
                fail: function(error) {
                    console.log(error);
                }
            });
            
            
         },
         fail : function(err) {
          alert(JSON.stringify(err))
       },
      });
       
    }
    </script>

</html>