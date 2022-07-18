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
<style>
h2 {
  text-align: center;
}
#head {
  position: fixed;
  width: 50%;
  box-sizing: border-box;
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
button{
  float: right;
}
</style>

</head>
<script>
</script>
<%=session.getAttribute("userId")%>
<%=session.getAttribute("pno")%>

<body>
<div><h2>공지사항</h2></div>
	<form>
		<div id="head">
			<table class="type09">
			<thead>
			<tr><th>알림 내용</th></tr>
			</thead>
			<tbody>
			<tr><td>${}</td></tr>
			</tbody>
			</table>
			<input type="button" value="알림 삭제" onclick="" style="float: right">
		</div>
	</form>
</body>
</html>