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
  width: 600px;
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
  height : 300px;
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
	margin:5px 0 0 5px;
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
var pnoCheck = "<%=session.getAttribute("pno")%>";
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
<div class="out">
<h1>공지사항</h1>
	<div class="my-box">
		<table class="type09">
			<thead>
				<tr><th>공지번호 | ${notice.noticeno}</th><th>제목 | ${notice.title}</th><th>작성일자 | <fmt:formatDate value="${notice.creatdate}"/></th></tr>
			</thead>
			<tbody>
				<tr><td colspan='3'>${notice.content}</td></tr>
			</tbody>
		</table>

		<input type="button" value="수정" onclick="goupt(${notice.noticeno})" class="button">
		<input type="button" value="삭제" onclick="godel(${notice.noticeno})" class="button">
		<input type="button" value="리스트" onclick="gomain()" class="button">
	</div>
</div>	
</body>
</html>