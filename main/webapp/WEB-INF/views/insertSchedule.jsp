<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
   .input-group-text{width:100%;background-color:#cfffdf;color:black;font-weight:bolder;}
   .input-group-prepend{width:20%;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
   $(document).ready(function(){
	   
      <%-- 
      
      --%>   
   });
	function goMain(){
		location.href="${path}/Main.do";
	}
   function insertProc(){
	   	$("form").attr("action","${path}/insertSchedule.do");
		$("form").submit();
	}

</script>
</head>

<body>

<form method="get">
	프로젝트 번호<input name="pno" value="2"/>
	아이템 <input name="item" value="플로우차트"/>
	인원 
	진행도 <select name="progress">
		<option value="기본" selected>기본</option>
		<option value="진행중">진행중</option>
		<option value="막힘">막힘</option>
		<option value="완료">완료</option>
		</select>
	마감일 <input type="date" name="deadline" value="2022-07-01"/>
	댓글 <input name="comm" value="코멘트123"/>
	<input name="perm" value="전권한"/>
	<button type="button" onclick="insertProc()">등록</button>
	<button type="button" onclick="goMain()">메인화면</button>	
</form>

<script type="text/javascript">	
var isInsert = "${isInsert}";
if(isInsert=="Y"){
	alert("등록성공!\n메인화면으로 이동합니다");
	location.href="${path}/Main.do";
}
</script>     

</body>
</html>