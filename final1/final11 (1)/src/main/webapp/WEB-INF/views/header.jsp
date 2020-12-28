<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- ##### Header Area Start ##### -->
    <header class="header-area">
    
        <!-- Top Header Area -->
        
        <div class="top-header-area bg-img bg-overlay" style="background-image: url(${path}/resources/img/bg-img/coffee111.gif);">
       
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-between">
           
                 
                    <div class="col-12 col-sm-6">
                   
                     <form name = "frm1" action="search" method="post" id = "frm2">
                        <!-- Top Social Info -->
                        <span id = "searchTypeDiv" style="float:left;">
                        <select name = "searchType" id = "searchType" style="display:block;">
                        	<option value="total">전체 검색</option>
                        	<option value="local">지역별 검색</option>
                        	<option value="teama">태마별 검색</option>
                        </select>                          
                        </span>
                    
                        
                    <span id = "categoryDiv" style="float:left; display:none;">
                     <span id = "LcategoryDiv" style="float:left;margin-left:100px;">
               			<select id = "Lcategory" name = "lcode">
                        	
                        </select>
                        <script id="Lcategorytemp" type="text/x-handlebars-template">
							
							<option value=total>전체선택</option>
							{{#each .}}
								<option value={{lcode}}>{{lname}}</option>
							{{/each}}

						
                        </script>
						
                        </span>
                         <span id = "McategoryDiv" style="float:left;margin-left:100px;"> </span>
                         
                           <script id="Mcategorytemp" type="text/x-handlebars-template">
							<select id = "Mcategory" name="mcode">
							<option value=total>전체선택</option>
							{{#each .}}
								<option value={{mcode}}>{{mname}}</option>
							{{/each}}

						 </select>
                        </script>
                        
                       
                    </span>
                    <input type = "hidden" name ="keyword">
                    </form>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-5 col-xl-4">
                        
                        <div class="top-search-area">
                              <form name = "frm10" action="search" method="post">
                              
                                <input type="search" name="query1" id="topSearch" placeholder="Search">
                                <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                                
                            </form>
                        </div>
                    </div>
                    
                 
                </div>
            </div>
        </div>

        <!-- Logo Area -->
        <div class="logo-area">
            <a href="/final/"><img src="${path}/resources/img/core-img/logo555.jpg" alt=""></a>
        </div>

        <!-- Navbar Area -->
        <div class="bueno-main-menu" id="sticker">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="buenoNav">

                        <!-- Toggler -->
                        <div id="toggler"><img src="${path}/resources/img/core-img/toggler.png" alt=""></div>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="/final/">Home</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="category">Category</a></li>
                                            <li><a href="reply">reply</a></li>
                                            <li><a href="list">list</a></li>
                                            <li><a href="read">Read</a></li> 
                                            <li><a href="insert">insert</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Recipes</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li><a href="list">Blog</a></li>
                                    
                                    <li><a href="contact">Contact</a></li>
                                     <c:if test="${gid!= null}">
                                      <li><a href="#">My Page</a>
                                      	<div class="megamenu">
                                      		<ul class="dropdown">
                                      			<li><a href="myPage">둘러보기</a></li>
                                      			<li><a href="joinUpdate">나의 정보 수정</a></li>
                                      		</ul>
                                      	</div>
                                      	</li>
                                     </c:if>
                                </ul>

                                <!-- Login/Register -->
                                <div class="login-area">
                                <c:if test="${gid == null&&bid == null}">
                                    <a href="login">Login / Register</a>
                                    </c:if>
                                    
                                    <c:if test="${gid!= null}">
                                   <span><b> ${gid}님 </b></span>
                                    <a href="logout">Logout</a>
                                    </c:if>
                                    
                                     <c:if test="${bid!= null}">
                                   <span><b> ${bid}님 </b></span>
                                    <a href="logout">Logout</a>
                                    </c:if>
                                </div>
                            </div>
                            <!-- Nav End -->

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
   <script>
   $(frm10).on("submit", function(e) {
	   e.preventDefault();
	  var query = $("#topSearch").val();

	  $(frm1.keyword).val(query);
	  
	   $(frm1).submit();
   });
   
   $.ajax({
	   type:"get",
	   url:"lcategory.json",
	   dataType:"json",
	   success:function(data){
		   
		   var temp=Handlebars.compile($("#Lcategorytemp").html());
		   $("#Lcategory").html(temp(data));

	   }
	   
	   
   });
   
   $("#Lcategory").change(function(){
	   var lcode = $("#Lcategory").val();
	 
	   $.ajax({
		   type:"get",
		   url:"mcategory.json",
		   data:{"lcode":lcode},
		   dataType:"json",
		   success:function(data){
			   
			   var temp=Handlebars.compile($("#Mcategorytemp").html());
			   $("#McategoryDiv").html(temp(data));

		   }
		   
		   
	   });
   });
  
   
   $("#searchType").change(function(){
	   getcategori();
   });
   
   function getcategori(){
	   if($("#searchType").val()=="local"){
		   $("#categoryDiv").show();
		   
		   
	   }else{
		   $("#categoryDiv").hide();
	   }
   };
   
  
   

</script>
    <!-- ##### Header Area End ##### -->