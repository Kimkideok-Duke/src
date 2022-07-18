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
table, th, td { border: 1px solid black; border-collapse: collapse }
table{
	width:70%;
	height: 200px;
	margin:auto;
}
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
</script>
</head>
<script type="text/javascript">
	function goupt(noticeno){
		if(confirm("수정화면으로 이동하시겠습니까?")){
			location.href="${path}/noticeGoUpdate.do?noticeno="+noticeno;
			}
		}
	function godel(noticeno){
		if(confirm("삭제하시겠습니까?")){
			location.href="${path}/noticeDelete.do?noticeno="+noticeno;
		}
	}
	function gomain(){
		location.href="${path}/noticeList.do"
	}
	
	var proc = "${proc}"
	if(proc=="del"){
		alert("삭제성공\n조회 리스트화면으로 이동!")
		location.href="${path}/noticeList.do";
	}	

</script>
<%=session.getAttribute("userId")%>
<%=session.getAttribute("pno")%>
<body>
<h2>공지사항</h2>
		<table>
			<tr><td>${notice.noticeno}</td><td>${notice.title}</td><td>${notice.creatdate}</td></tr>
			<tr><td colspan='3'>${notice.content}</td></tr>
		</table>

<input type="button" value="수정" onclick="goupt(${notice.noticeno})">
<input type="button" value="삭제" onclick="godel(${notice.noticeno})">
<input type="button" value="리스트" onclick="gomain()">
</body>
</html>