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
   function goJoin(){
      location.href="${path}/joinProjectPage.do";
   }
</script>
</head>
<style type="text/css">
	body{
		background-color:rgb(247,247,247);
	}
	.page_title{
		text-align:center;
		margin-top:20px;
		color:rgb(22,160,133);
		font-size:60px;
		font-weight:bold;
	}
    #frm01{
		width:100%;
		height:auto;
		text-align:center;
		font-size:20px;
	}
	.prjTitle{
		text-align:center;
	}
	.prjTitle input[type=text]{
		width:400px;
		text-align:center;
	}
	.prjType{
		background-color:rgba(46, 204, 113, 0.42);
		margin-top:10px;
		margin-left:280px;
		width:50%;
		border: none;
  		border-radius: 10px;
	}
	.Tradio{
		text-align:left;
		margin-left:180px;
		width:100%;
	}
	.prjPurpose{
		background-color:rgba(46, 204, 113, 0.42);
		margin-top:10px;
		margin-left:280px;
		width:50%;
		border: none;
  		border-radius: 10px;
	}
	.Pradio{
		text-align:left;
		margin-left:180px;
		width:100%;
	}
	#crtBtn{
		background-color:rgb(46, 204, 113);
		margin-top:10px;
		margin-left:5px;
		width:50%;
		color:white;
		border:none;
		font-size:30px;
		border-radius: 10px;
	}
	.selBtn:hover{
		background-color:#4CAF50;
	}
	.pm_wrapper {
		padding: 0px;
		margin-top:50px;
		text-align:center;
	}
</style>
<body>
<div class="pm_wrapper">
    <img src="a00_com/img/PM.png" width="150">
</div>
<!-- <input type="button" onclick="goJoin()" value="뒤로"> -->
  <h1 class="page_title">프로젝트 생성</h1>

<form id="frm01" action="${path}/createProject.do" 
      class="form"  method="post">
   <div class="container">
      <div class="prjTitle">
         프로젝트 명 입력 <input type="text" name="title" placeholder="생성할 프로젝트명을 입력하세요">
      </div>
      <div class="prjType">
         <h4>프로젝트 종류</h4>
         <div class="Tradio">
         <input type="radio" name="ptype" value="크리에이티브&디자인" checked> 크리에이티브&디자인<br>
         <input type="radio" name="ptype" value="IT"> IT<br>
         <input type="radio" name="ptype" value="소프트웨어개발"> 소프트웨어 개발<br>
         <input type="radio" name="ptype" value="마케팅"> 마케팅<br>
         <input type="radio" name="ptype" value="프로젝트관리"> 프로젝트 관리<br>
         <input type="radio" name="ptype" value="영업&CRM"> 영업&CRM<br>
         <input type="radio" name="ptype" value="작업관리"> 작업관리<br>
         <input type="radio" name="ptype" value="HR"> HR<br>
         <input type="radio" name="ptype" value="운영"> 운영<br>
         </div>
      </div>
      <div class="prjPurpose">
         <h4>프로젝트 용도</h4>
         <div class="Pradio">
         <input type="radio" name="purpose" value="업무" checked> 업무<br>
         <input type="radio" name="purpose" value="개인적용도"> 개인적용도<br>
         <input type="radio" name="purpose" value="학교"> 학교<br>
         <input type="radio" name="purpose" value="비영리"> 비영리<br>
         </div>
      </div>
      <input type="hidden" name="code" value="${code}">
      <input type="button" id="crtBtn" onclick="createProject()" value="새프로젝트 생성">
   </div>
</form>
<script>
var isCreate = "${isCreate}"
if(isCreate=="Y"){
   var pno = "${pno}"
   location.href="${path}/Project1.do"
}
function createProject(){
   if(confirm("등록하시겠습니까?")){
      var title = $("[name=title]").val();
      if(title == ""){
         alert("프로젝트 명을 입력하세요");
         $("[name=title]").focus();
         return; // 프로세스를 중단 처리
      }
      document.querySelector("form").submit();
   }
}
</script>
</body>
</html>