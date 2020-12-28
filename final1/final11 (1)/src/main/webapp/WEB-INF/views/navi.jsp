<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
<div id = navi>
<div id = "view" class = "view">최근본 카페</div>

<c:set var="size" value="${fn:length(lastview)}" />

<div id=lastviewbox onClick="location.href='read?ccode=${lastview[size-1].ccode}'">
<c:if test="${lastview[size-1].cimage!='' }">
<div style="width:90px;height:120px;"><img src="display?fileName=${lastview[size-1].cimage}"/></div>
</c:if>

<c:if test="${lastview[size-1].cimage=='' }">
<div style="width:90px;height:100px;"><img src="http://placehold.it/90x120" /></div>
</c:if>

<div style="word-wrap:normal;width:90px;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;"><a style="font-size:10px;" href="read?ccode=${lastview[size-1].ccode}" >${lastview[size-1].cname}</a></div>

</div>
</div>


<div id = "lastviewlist" class = "lastviewlist">
<div><a style="font-size:40px;float:left;margin-left:10px; margin-right:30px" ><img src="${path}/resources/img/core-img/x.png" width=25 height=25></a><h2 class = "lastviewlist" style=" margin-left:140px;margin-top:15px;" >최근 본 카페 </h2></div>
<c:forEach var="i" begin="1" end="${size}">
	<div id=lastviewbox onClick="location.href='read?ccode=${lastview[size-i].ccode}'">
<c:if test="${lastview[size-i].cimage!='' }">
<span style="width:150px;height:150px;margin-left:3%;"><img src="display?fileName=${lastview[size-i].cimage}" style="width:100px;height:100px; "></span>
</c:if>

<c:if test="${lastview[size-i].cimage=='' }">
<span style="width:150px;height:150px;margin-left:3%; "><img src="http://placehold.it/100x100" /></span>
</c:if>

<span style="word-wrap:normal;width:90px;text-overflow:ellipsis;white-space:nowrap;overflow:hidden; margin-left:3%;"><a style="font-size:15px;" href="read?ccode=${lastview[size-i].ccode}" >${lastview[size-i].cname}</a></span>
	
</div>
</c:forEach>
</div>
<script type="text/javascript">

$('html').click(function(e) { 
	if(!$(e.target).hasClass("lastviewlist")&&!$(e.target).hasClass("view")) { 
		
if($("#lastviewlist").css("display")!="none"){
	
		$("#lastviewlist").hide("slow");
	}
}
});
$("#view").on("click",function(){
	$("#lastviewlist").show("slow");
});
</script>
<style>
#lastviewlist{width:22%;height:60%;
max-height:60%;
overflow-y:auto;
 position: fixed;
 right:0px;
 top : 0px;
 z-index: 99999;
 background:white;
 border:1px solid black;
 padding :5px;
 
 display:none;


}

#lastviewbox{
width:400px;
height:100px;
margin-top:10%
}


#navi{width:100px;height:170px;
 position: fixed;
 right:50px;
 top : 300px;
 z-index: 99998;
 background:white;
 border:1px solid black;
 border-radius:5px 5px 5px 5px;
 padding :5px;
 text-align:center;
 
}
</style>