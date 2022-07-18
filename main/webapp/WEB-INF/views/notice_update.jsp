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
<script>
	function goupdate(){
		if(confirm("수정하시겠습니까?")){
			var titleVal = $("[name=title]").val();
			var contentVal = $("[name=content]").val();
			// 수정된 내용이 없으면 수정불가 유효성 검사
			$("form").attr("action","${path}/noticeUpdate.do");
			$("form").submit();
		}
	}
	var upt = "${upt}"
	if(upt=="Y"){
		if(confirm("수정성공!\n조회리스트화면으로 이동하시겠습니까?")){
			location.href="${path}/noticeList.do";
		}
	}
</script>
<body>
<div><h2>공지사항 수정</h2></div>
	<form>
		<p><input type="hidden" name="noticeno" value="${notice.noticeno}">
		<p><textarea cols="100" rows="1" name="title">${notice.title }</textarea></p>
		<p><textarea cols="100" rows="30" name="content">${notice.content }</textarea></p>
		<input type="button" value="수정완료" onclick="goupdate()">
	</form>
</body>
</html>