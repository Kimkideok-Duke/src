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
<style>

</style>

</head>

<body>
<div><h2>공지사항 수정</h2></div>
	<form>
		<p><textarea cols="100" rows="1">제목을 입력하세요.</textarea></p>
		<p><textarea cols="100" rows="30">내용을 입력하세요.</textarea></p>
		<input type="button" value="수정완료">
	</form>
</body>
</html>