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
table, th, td { border: 1px solid black; border-collapse: collapse }
table{
	width:70%;
	height: 200px;
	margin:auto;
}
</style>

</head>

<body>
<div><h2>공지사항</h2></div>
	<form>
		<table>
		<tr><th>No.</th><th>제목</th><th>작성자</th><th>작성일자</th><th>조회수</th></tr>
		<tr><td></td><td></td><td></td><td></td><td></td></tr>
		</table>
		<input type="button" value="등록">
	</form>
</body>
</html>