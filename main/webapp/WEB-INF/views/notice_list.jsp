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
h1 {
  text-align: center;
  margin:20px;
}
.out {
  margin:0 0 20px 0;
}
table.type09 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  width: 700px;
  margin: auto;

}
table.type09 thead th {
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #464d48;
  border-bottom: 3px solid #8fbd9b;
}
table.type09 tbody th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #f3f6f7;
}
table.type09 td {
  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}
tr:hover{
  background: #f3f6f7;
}
.button{
  float: right;
	background-Color:#7cc290;
	border: 3px solid #7cc290;
	border-radius: 5px;
	text-align: center;
	margin:0 0 0 5px;
	width : 55px;
	font-size: 13px;
}
.button:hover{
  background-Color: #65a678;
}
.my-box { 
	border:1px solid; 
	padding:50px; 
	margin:auto;
	width: 700px;
}
form{
	float: right;
	display:block;
}
</style>

</head>
<script>
	function goDetail(noticeno){
		location.href="${path}/noticeDetail.do?noticeno="+noticeno;
	}
	function goWrite(){
		location.href="${path}/noticeGoWrite.do";
	}
</script>
<%=session.getAttribute("userId")%>
<%=session.getAttribute("pno")%>
<body>

	<div class="out">
		<h1>공지사항</h1>
		<div class="my-box">
		<form action="${path}/noticeList.do">
			<input name="title" placeholder="제목" value="${notice.title}">
			<input type="submit" value="검색" class="button">
		</form>
			
				<table class="type09">
				<thead>
				<tr><th>No.</th><th>제목</th><th>작성자</th><th>작성일자</th><th>조회수</th></tr>
				</thead>
				<tbody>
				<c:forEach var="nl" items="${nolist}">
				<tr ondblclick="goDetail(${nl.noticeno})"><td>${nl.noticeno}</td><td>${nl.title}</td><td>호스트</td><td><fmt:formatDate value="${nl.creatdate}"/></td><td>${nl.views}</td></tr>
				</c:forEach>
				</tbody>
				</table>
				<input type="button" value="글등록" onclick="goWrite()" class="button" style="margin:5px 0 0 0;">
			</div>
		</div>		
</body>
</html>