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
<title>Manage Member</title>
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
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2 data-toggle="modal" data-target="#exampleModalCenter">팀원 관리</h2>

</div>
<div class="container">
   <table class="memberTable">
   	<%int i=0; %>
  	  <tr>
  	  	<col width="30%"><col width="30%"><col width="30%"><col width="10%">
     	<th>No.</th><th>팀원명</th><th>권한</th><th></th></tr>
  	   <c:forEach var="m" items="${mlist}">
      	   <tr><td><%=++i %></td><td>${m.name}</td><td>${m.auth}</td>
      	   <%if(i!=1){ %>
      	   	<td><input type="button" onclick="deleteProc(${m.userno}, ${m.pno}, '${m.name}')" value="삭제"></td>
      	   <%} %>
      	   </tr>
      </c:forEach>
   </table>    
    
</div>
<script>
var del = "${del}"
function deleteProc(userno, pno, name){
   if(confirm(name+" 삭제하시겠습니까?")){
      location.href="${path}/deleteMember.do?userno="+userno+"&pno="+pno;
   }
}
if(del=="Y"){
   alert("삭제성공")
   location.href="${path}/getMemberList.do";
}
</script>
</body>
</html>