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
   td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<style>

</style>

</head>
<%=session.getAttribute("userId")%>
<%=session.getAttribute("pno")%>
<body>
<div><h2>공지사항 작성</h2></div>
	<form action="${path}/noticeInsert.do" >
		<p><textarea cols="100" rows="1" name="title" placeholder="제목을 입력하세요."></textarea></p>
		<p><textarea cols="100" rows="30" name="content" placeholder="내용을 입력하세요."></textarea></p>
		<input type="button" value="등록" onclick="goInsert()">
		<input type="button" value="리스트" onclick="gomain()">
	</form>
<script>
var isInsert = "${isInsert}"
	if(isInsert=="Y"){
		if(!confirm("등록성공했습니다\n계속등록하시겠습니까?")){
			location.href="${path}/noticeList.do"
		}
	}
function goInsert(){
	if(confirm("등록하시겠습니까?")){
		var titleVal = $("[name=title]").val();		
		if(titleVal == ""){
			alert("제목을 입력하세요");
			$("[name=title]").focus();
			return;
		}	
		var contentVal = $("[name=content]").val();
		if(contentVal == ""){
			alert("내용을 입력하세요");
			$("[name=content]").focus();
			return;
		}	
		document.querySelector("form").submit();
	}
}
function gomain(){
	location.href="${path}/noticeList.do"
}
</script>
</body>
</html>