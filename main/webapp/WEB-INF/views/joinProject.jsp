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
<style type="text/css">
	body{
		background-color:rgb(247,247,247);
	}
	.page_title{
		text-align:center;
		margin-top:20px;
		margin-bottom:50px;
		color:rgb(22,160,133);
		font-size:60px;
		font-weight:bold;
	}
    .joinPrj{
		width:70%;
		height:auto;
		margin-top:80px;
		margin-left:220px;
		font-size:30px;
	}
	.code{
		width:50%;
		height:auto;
		margin-top:80px;
		margin-left:10px;
		text-align:center;
	}
	.join{
		background-color:rgb(46, 204, 113);
		margin-left:30px;
		width:20%;
		color:white;
		border:none;
		font-size:30px;
	}
	.join:hover{
		background-color:#4CAF50;
	}
	.crt{
		background-color:rgb(46, 204, 113);
		color:white;
		border:none;
		margin-left:140px;
	}
	.crt:hover{
		background-color:#4CAF50;
	}
	.pm_wrapper {
		padding: 0px;
		margin-top:50px;
		text-align:center;
	}
</style>
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
   
   function joinProject(){             // 프로젝트 참여 함수
	   var code = $("[name=code]").val();
      location.href="${path}/joinProject.do?code="+code;
	}
   	
   function createProject(){           // 프로젝트 생성 함수
      location.href="${path}/createProjectPage.do";
	}
</script>
</head>

<body>
<div class="pm_wrapper">
    <img src="a00_com/img/PM.png" width="150">
</div>
  <h1 class="page_title">새 프로젝트 생성/선택</h1>
<div class="joinPrj">
    프로젝트 코드 입력 <input type="text" class="joinPrj code" name="code" placeholder="전달받은 코드를 입력해주세요.">
    <input type="button" class="joinPrj join" onclick="joinProject()" value="참가"><br>
    <input type="button" class="joinPrj crt" onclick="createProject()" value="새프로젝트 생성">
</div>
<script>
var isJoin = "${isJoin}"
if(isJoin=="Y"){
   var pno = "${pno}"
   location.href="${path}/Main.do?pno="+pno    // 임시로 Project1
}
</script>
</body>
</html>