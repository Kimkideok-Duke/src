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
<script type="text/javascript">
   $(document).ready(function(){
      <%-- 
      
      --%>   
   });
function editMem(){
	if(confirm("수정하시겠습니까?")){
		//유효성 check
		$("form").attr("action","${path}/updateSchedule.do");
		$("form").submit();
	}
}
   
</script>
</head>

<body>
  <h2>참여인원</h2>
  	<form action="" method="post">
	  	아이템 이름 <input name="item" value="${nameslist.get(0).item }" readonly>
		<c:forEach var="names" items="${nameslist}">
	  	<input type="checkbox" name="userno" value="${names.userno}"> ${names.name}
		</c:forEach>
		<button type="button" onclick="editMem()">멤버변경</button>
	</form>
</body>
</html>