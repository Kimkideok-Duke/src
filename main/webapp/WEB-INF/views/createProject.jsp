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

<body>
<div class="jumbotron text-center">
  <h2>새 프로젝트 생성</h2>
</div>
<input type="button" onclick="goJoin()" value="뒤로">

<form id="frm01" action="${path}/createProject.do" 
      class="form"  method="post">
   <div class="container">
      <div class="prjTitle">
         <input type="text" name="title" placeholder="프로젝트명을 입력하세요">
      </div>
      <div class="prjType">
         <h4>프로젝트 종류</h4>
         <input type="radio" name="ptype" value="크리에이티브&디자인"> 크리에이티브&디자인
         <input type="radio" name="ptype" value="IT"> IT
         <input type="radio" name="ptype" value="소프트웨어개발"> 소프트웨어 개발
         <input type="radio" name="ptype" value="마케팅"> 마케팅
         <input type="radio" name="ptype" value="프로젝트관리"> 프로젝트 관리
         <input type="radio" name="ptype" value="영업&CRM"> 영업&CRM
         <input type="radio" name="ptype" value="작업관리"> 작업관리
         <input type="radio" name="ptype" value="HR"> HR
         <input type="radio" name="ptype" value="운영"> 운영
      </div>
      <div class="prjPurpose">
         <h4>프로젝트 용도</h4>
         <input type="radio" name="purpose" value="업무"> 업무
         <input type="radio" name="purpose" value="개인적용도"> 개인적용도
         <input type="radio" name="purpose" value="학교"> 학교
         <input type="radio" name="purpose" value="비영리"> 비영리
      </div>
      <input type="hidden" name="code" value="${code}">
      <input type="button" onclick="createProject()" value="새프로젝트 생성">
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