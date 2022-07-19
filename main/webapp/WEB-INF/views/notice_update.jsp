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
h1 {
  text-align: center;
  margin:20px;
}
.out {
  margin:0 0 20px 0;
}
.psty {
  color: #464d48;
  font-size: 20px;
  font-weight: bold;
}
table.type09 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  width: 600px;
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
  height : 300px;
}
.button{
  float: right;
	background-Color:#7cc290;
	border: 3px solid #7cc290;
	border-radius: 5px;
	text-align: center;
	margin:5px 0 0 5px;
	width : 70px;
	font-size: 13px;
}
.button:hover{
  background-Color: #65a678;
}
.my-box { 
	border:1px solid; 
	padding:50px; 
	margin:auto;
	width: 700px;
}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<style>

</style>

</head>
<script>
	function goupdate(){
		if(confirm("수정하시겠습니까?")){
			var titleVal = $("[name=title]").val();
			var contentVal = $("[name=content]").val();
			// 수정된 내용이 없으면 수정불가 유효성 검사
			$("form").attr("action","${path}/noticeUpdate.do");
			$("form").submit();
		}
	}
	var upt = "${upt}"
	if(upt=="Y"){
		if(confirm("수정성공!\n조회리스트화면으로 이동하시겠습니까?")){
			location.href="${path}/noticeList.do";
		}
	}
</script>
<body>
	<div class="out">
		<h1>공지사항 수정</h1>
			<form>
				<div class="my-box">
				<p><input type="hidden" name="noticeno" value="${notice.noticeno}">
				<p class="psty">제목 </p><textarea cols="80" rows="1" name="title">${notice.title }</textarea>
				<p class="psty">내용 </p><textarea cols="80" rows="15" name="content">${notice.content }</textarea>
				<input type="button" value="수정완료" onclick="goupdate()" class="button">
				</div>
			</form>
	</div>	
</body>
</html>