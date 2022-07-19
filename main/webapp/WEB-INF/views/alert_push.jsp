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

<body>
	<h1>알림</h1>
	<div class="my-box">
			<table class="type09">
			<thead>
			<tr><th>알림내용</th></tr>
			</thead>
			<tbody>
			<!--(프로젝트명) 프로젝트의 (아이템명) 진행상태가 (진행상태)로 변경되었습니다.-->
			<tr><td>${alert.title}+" 프로젝트의"+${alert.item}+ " 진행상태가"+${alert.progress}+"로 변경되었습니다."</td></tr>
			<!--(프로젝트명) 프로젝트의 (아이템명) 마감 (몇)일전입니다.-->
			<tr><td>${alert.title}+" 프로젝트의"+${alert.item}+ "은 마감"+${alert.dday}+"일전입니다."</td></tr>
			</tbody>
			</table>
		</div>
</body>
</html>