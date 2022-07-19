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
    .prjSel{
		width:70%;
		height:auto;
		margin-top:80px;
		margin-left:350px;
		font-size:40px;
	}
	.selBtn{
		background-color:rgb(46, 204, 113);
		margin-left:30px;
		width:20%;
		color:white;
		border:none;
		font-size:30px;
	}
	.selBtn:hover{
		background-color:#4CAF50;
	}
	.selOpt{
		width:30%;
		text-align:center;
		margin-left:20px;
		font-size:30px;
	}
	.pm_wrapper {
		padding: 0px;
		margin-top:50px;
		text-align:center;
	}
</style>
<head>
<meta charset="UTF-8">
<title>Choose Project</title>
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
   
   function chooseProject(){
	   var prj = document.querySelector("[name=projects]");
		if (prj.value=="sel")
		{
			alert("프로젝트를 선택해주세요.")
			return;
		}
		if(prj.value=="new"){
			location.href="${path}/joinProjectPage.do";
		}
		else{
			sessionStorage.setItem("pno", pno );
			location.href="${path}/Main.do?pno="+pno;
		}
	}
</script>
</head>

<body>
<div class="pm_wrapper">
    <img src="a00_com/img/PM.png" width="150">
</div>
  <h1 class="page_title">참가할 프로젝트 선택</h1>
<div class="prjSel">
    프로젝트 선택<select name='projects' class="prjSel selOpt">
      <option value='sel' selected>-- 선택 --</option>
 	   <c:forEach var="pj" items="${plist}">
         <option value="${pj.title}">${pj.title}</option>
         <script>var pno = ${pj.pno}</script>
      </c:forEach>
      <option value="new">새 프로젝트</option>
	</select>
      <input type="button" class="prjSel selBtn" onclick="chooseProject()" value="선택">
</div>
</body>
</html>