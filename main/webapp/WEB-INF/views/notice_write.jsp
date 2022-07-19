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
h1 {
  text-align: center;
  margin:20px;
}
.out {
  margin:0 0 20px 0;
}
.psty {
  color: #464d48;
  font-size: 20px;
  font-weight: bold;
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
	width : 70px;
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
</style>

</head>
<%=session.getAttribute("userId")%>
<%=session.getAttribute("pno")%>
<body>
<div class="out">
	<h1>공지사항 작성</h1>
		<form action="${path}/noticeInsert.do" >
			<div class="my-box">
				<p class=".psty"><textarea cols="80" rows="1" name="title" placeholder="제목을 입력하세요."></textarea></p>
				<p class=".psty"><textarea cols="80" rows="15" name="content" placeholder="내용을 입력하세요."></textarea></p>
				<input type="button" value="등록" onclick="goInsert()" class="button">
				<input type="button" value="리스트" onclick="gomain()" class="button">
			</div>
		</form>
</div>	
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