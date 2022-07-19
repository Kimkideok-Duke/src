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
#scheTable {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#scheTable td, #scheTable th {
  border: 1px solid #ddd;
  padding: 8px;
}

#scheTable tr:nth-child(even){background-color: #f2f2f2;}

#scheTable tr:hover {background-color: #ddd;}

#scheTable th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
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
      
   });
   
   function goDetail(itemno){
		location.href="${path}/ScheduleDetail.do?itemno="+itemno;
	}
   function goInsert(){
		location.href="${path}/Insert.do";
	}
   function goNotice(pno){
		location.href="${path}/noticeList.do?pno="+pno;
	}
</script>
</head>

<body>
	<h2>${slist.get(0).pno}번 프로젝트</h2>
	<button type="button" onclick="goNotice(${slist.get(0).pno})">공지사항</button>
	
	<table id="scheTable">
		<tr><th>아이템</th><th>인원</th><th>진행도</th><th>마감일</th><th>댓글</th><th>활동로그</th></tr>
		<c:forEach var="schedule" items="${slist}">
		<tr ondblclick="goDetail(${schedule.itemno})"><td>${schedule.item}</td>
		<td><img src="${path}/a00_com/member.jpg" height="30" width="30"/></td><td>${schedule.progress}</td>
		<td>${schedule.deadline}</td><td>${schedule.comm}</td>
		<td onclick="goLog('${schedule.item}','${schedule.progress}','${schedule.deadline}','${schedule.comm}')">
		<img src="${path}/a00_com/img/log.png" height="25" width="25">
		</tr>
        </c:forEach>
	</table>
	
	<form method="post">
		<button type="button" onclick="goInsert()">등록페이지</button>
	</form>
	
<script type="text/javascript">

</script>

</body>

<script type="text/javascript">
   $(document).ready(function(){
      
   });
   
   function goDetail(itemno){
		location.href="${path}/ScheduleDetail.do?itemno="+itemno;
	}
   function goInsert(){
		location.href="${path}/Insert.do";
	}
   function goLog(item,progress,deadline,comm){
	   location.href="${path}/Log.do?item="+item+"&progress="+progress
			   +"&deadline="+deadline+"&comm="+comm;
   }
</script>

</html>