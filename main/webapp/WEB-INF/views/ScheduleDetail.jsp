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
		location.href="${path}/Main.do"
	}
	

</script>
</head>

<body>

<form method="post">
	<input name="itemno" value="${schedule.itemno }"/>
	<input name="pno" value="${schedule.pno }"/>
	아이템 <input name="item" value="${schedule.item }"/>
	인원 
	진행도 <select name="progress">
		<option value="기본" selected>기본</option>
		<option value="진행중">진행중</option>
		<option value="막힘">막힘</option>
		<option value="완료">완료</option>
		</select>
	마감일 <input type="date" name="deadline_s" value="${schedule.deadline}" /> 
	댓글 <input name="comm" value="${schedule.comm }"/>
	<input name="auth" value="${schedule.auth }"/>
	<button type="button" onclick="updateProc()">수정</button>
	<button type="button" onclick="deleteProc()">삭제</button>
	<button type="button" onclick="goMain()">메인화면</button>	
</form>

<script type="text/javascript">
function updateProc(){
	if(confirm("수정하시겠습니까?")){
		//유효성 check
		$("form").attr("action","${path}/updateSchedule.do");
		$("form").submit();
	}
}
function deleteProc(){
	if(confirm("삭제하시겠습니까?")){
		//유효성 check
		$("form").attr("action","${path}/deleteSchedule.do");
		$("form").submit();
	}
}

var proc = "${proc}";
if(proc=="upt"){
	alert("수정성공!\n메인화면으로 이동합니다");
	location.href="${path}/Main.do";
}
if(proc=="del"){
	alert("삭제성공!\n메인화면으로 이동합니다");
	location.href="${path}/Main.do";
}
</script>     

</body>
</html>