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
<style type="text/css">
	#pwChange_btn{
		border-radius: 5px;
		background-color:#9ad756;
		color:white;
		border: none;
		cursor:pointer;
		height:30px;
		margin-left:10px;
	}
	#content_area{
		width:70%;
		height:auto;
		margin:0 auto;
		border:1px solid white;
	}
	.page_title{
		text-align:center;
		margin-bottom:50px;
	}
	.member_info{
		width:70%;
		height:auto;
		margin:0 auto;
		border-collapse: collapse;
		margin-top:40px;
	}
	.member_info th{
		background-color:#D6ECBE;
		height:40px;
		font-size:14px;
	}
	.member_info span{
		margin-left:15px;
	}
	.member_info th, td{
		border:1px solid gray;
	}
	.my_project{
		width:100%;
		height:auto;
		margin:0 auto;
		border-collapse: collapse;
	}
	.my_project th{
		background-color:#D6ECBE;
		border-top:1px solid gray;
		height:30px;
	}
	.my_project td{
		text-align:center;
		border:none;
		border-bottom:1px solid gray;
	}
	.project_content:hover{
		background-color:rgb(245,245,245);
		cursor:pointer;
	}
	.sub_title{
		display:block;
		margin-top:50px;
	}
</style>
</head>

<body>
<h1 class="page_title">마이페이지</h1>


	<div id="content_area">
	<form action="${path}/changePw.do" method="post">
		<div>
			<table class="member_info">
				<tr><th>아이디</th><td><span>${user.id}</span></td></tr>
				<tr><th>비밀번호 변경</th><td>
				
				<span><input type="password" name="pw" placeholder="현재 비밀번호 입력"></span>
				<button type="button" id="pwChange_btn" onclick="gochangePw()">비밀번호 변경</button></td></tr>
				
				<tr><th>이름</th><td><span>${user.name}</span></td></tr>
				<tr><th>이메일</th><td><span>${user.email}</span></td></tr>
			</table>
		</div>
	</form>
		<div>
			<h2 class="sub_title">내가 생성한 프로젝트</h2>
		</div>
		<div>
			<table class="my_project">
				<tr><th>번호</th><th>프로젝트명</th><th>참여인원</th></tr>
				<tr class="project_content"><td>1</td><td>a</td><td>1</td></tr>
			</table>
		</div>
		
		<div>
			<h2 class="sub_title">내가 참여한 프로젝트</h2>
		</div>
		<div>
			<table class="my_project">
				<tr><th>번호</th><th>프로젝트명</th><th>참여인원</th></tr>
				<tr class="project_content"><td>1</td><td>a</td><td>1</td></tr>
			</table>
		</div>
	</div>

<script type="text/javascript">
console.log("<%=session.getAttribute("userId")%>");
console.log("<%=session.getAttribute("userNo")%>");
function gochangePw(){
	var pwObj = document.querySelector("[name=pw]");
	if(pwObj.value==""){
		alert("비밀번호를 입력해야합니다.");
		pwObj.focus();
		return;
	}
	document.querySelector("form").submit();
}
var proc2 = "${proc2}";
if(proc2=="N"){
	alert("비밀번호가 일치하지 않습니다.");
	location.href="${path}/mypage.do"
}
</script>
	

</body>
</html>