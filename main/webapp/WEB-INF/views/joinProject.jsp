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
<title>Join Project</title>
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
<script type="text/javascript">
   $(document).ready(function(){
      <%-- 
      
      --%>   
   });
   
   function joinProject(){
	   var code = $("[name=code]").val();
      location.href="${path}/joinProject.do?code="+code;
	}
   	
   function createProject(){
      location.href="${path}/createProjectPage.do";
	}
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>새 프로젝트 생성/선택</h2>
</div>
<div class="container">
    <input type="text" name="code" placeholder="Enter CODE">
    <input type="button" onclick="joinProject()" value="JOIN"><br>
    <input type="button" onclick="createProject()" value="새프로젝트 생성">
</div>
<script>
var isJoin = "${isJoin}"
if(isJoin=="Y"){
   var pno = "${pno}"
   location.href="${path}/Project1.do"
}
</script>
</body>
</html>