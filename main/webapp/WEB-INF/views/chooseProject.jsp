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
			location.href="${path}/Project1.do";
		}
	}
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>프로젝트 선택</h2>

</div>
<div class="container">
    프로젝트 선택:<select name='projects'>
      <option value='sel' selected>-- 선택 --</option>
 	   <c:forEach var="pj" items="${plist}">
         <option value="${pj.title}">${pj.title}</option>
      </c:forEach>
      <option value="new">새 프로젝트</option>
      <input type="button" id="btnSel" onclick="chooseProject()" value="선택">
</div>
</body>
</html>