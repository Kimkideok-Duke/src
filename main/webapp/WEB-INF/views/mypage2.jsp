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
	#pwChange_btn:hover{
		background-color:#8ec451;
	}
	#content_area{
		width:70%;
		height:auto;
		margin:0 auto;
		border:1px solid white;
	}
	#content_area input:focus {
	    border:2px solid #9ad756;
	    outline: none;
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
		border:none;
		margin-top:40px;
	}
	.member_info th{
		background-color:#D6ECBE;
		height:40px;
		font-size:14px;
		border-top:1px solid gray;
		border-bottom:1px solid gray;
	}
	.member_info td{
		border-bottom:1px solid gray;
		border-top:1px solid gray;
	}
	.member_info span{
		margin-left:15px;
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
	.project_content tr:hover{
		background-color:rgb(245,245,245);
		cursor:pointer;
	}
	.project_content td{
		padding-top:10px;
		padding-bottom:10px;
	}
	.sub_title{
		display:block;
		margin-top:50px;
	}
	#withdraw_btn{
		border-radius: 5px;
		background-color:#9ad756;
		color:white;
		border: none;
		cursor:pointer;
		height:30px;
		margin-left:10px;
		float:right;
		margin-right: 15%;
		margin-top:20px;
	}
	#withdraw_btn:hover{
		background-color:#8ec451;
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
		var logout = "${logout}";
		if(logout=="Y"){
			alert("페이지에서 로그아웃되었습니다.");
			location.href="${path}/login.do";
		}
		$.ajax({
			url:"${path}/mypageAjax.do",
			dataType:"json",
			success:function(data){
				var user = data.user;
				$("#user_id").text(user.id);
				$("#user_name").text(user.name);
				$("#user_email").text(user.email);
			}
		});
		$.ajax({
			url:"${path}/createPjList.do",
			dataType:"json",
			success:function(data){
				var clist = data.createList;
				var addHtml1 = "";
				$(clist).each(function(idx, c){
					addHtml1 += "<tr onclick='goDetail("+c.pno+")'><td>"+(idx+1)+"</td><td>"+c.title+"</td><td>"+c.countuser+"</td></tr>";
				});
				$("#project_create").html(addHtml1);
			}
		});
		$.ajax({
			url:"${path}/joinPjList.do",
			dataType:"json",
			success:function(data){
				var jlist = data.joinList;
				var addHtml2 = "";
				$(jlist).each(function(idx, j){
					addHtml2 += "<tr onclick='goDetail("+j.pno+")'><td>"+(idx+1)+"</td><td>"+j.title+"</td><td>"+j.countuser+"</td></tr>";
				});
				$("#project_join").html(addHtml2);
			}
		});
		$("#pwChange_btn").click(function(){
			var pw = $("[name=pw]").val();
			if(pw==""){
				alert("비밀번호를 입력해야합니다.");
				$("[name=pw]").focus();
				return;
			}
			$.ajax({
				url:"${path}/goChangePwAjax.do",
				data:"pw="+pw,
				dataType:"json",
				success:function(data){
					if(!data.valid){
						alert("비밀번호가 일치하지 않습니다.");
						$("[name=pw]").focus();
					}else{
						location.href="${path}/goChangePwPage.do"
					}
				}
			});
		});
		$("#logout_btn").click(function(){
			if(confirm("로그아웃 하시겠습니까?")){
				location.href="${path}/logout.do";
			}
		});
		$("#withdraw_btn").click(function(){
			if(confirm("회원탈퇴 하시겠습니까?")){
				location.href="${path}/withdraw.do?userno="+<%=session.getAttribute("userNo")%>;
			}
		});
	});

</script>
</head>

<body>
<h1 class="page_title">마이페이지</h1>
<jsp:include page="/WEB-INF/views/Nav.jsp"/>

	<div id="content_area">
	<form action="${path}/changePw.do" method="post">
		<div>
			<table class="member_info">
				<tr><th>아이디</th><td><span id="user_id"></span></td></tr>
				<tr><th>비밀번호 변경</th><td>
				
				<span><input type="password" name="pw" placeholder="현재 비밀번호 입력"></span>
				<button type="button" id="pwChange_btn">비밀번호 변경</button></td></tr>
				
				<tr><th>이름</th><td><span id="user_name"></span></td></tr>
				<tr><th>이메일</th><td><span id="user_email"></span></td></tr>
			</table>
		</div>
		<button type="button" id="withdraw_btn">회원탈퇴</button>
	</form>
		<div>
			<h2 class="sub_title">내가 생성한 프로젝트</h2>
		</div>
		<div>
			<table class="my_project">
				<tr><th>번호</th><th>프로젝트명</th><th>참여인원</th></tr>
				<tbody id="project_create" class="project_content">
				</tbody>
			</table>
		</div>
		
		<div>
			<h2 class="sub_title">내가 참여한 프로젝트</h2>
		</div>
		<div>
			<table class="my_project">
				<tr><th>번호</th><th>프로젝트명</th><th>참여인원</th></tr>
				<tbody id="project_join" class="project_content">
				</tbody>
			</table>
		</div>
		<button type="button" id="logout_btn">로그아웃</button>
		
	</div>

<script type="text/javascript">
var loginCheck = "<%=session.getAttribute("userId")%>";
if(loginCheck=="null" || loginCheck=="" || loginCheck==null || loginCheck == undefined || 
		( loginCheck != null && typeof loginCheck == "object" && !loginCheck.keys(loginCheck).length )){
	alert("로그인 정보가 없습니다.\n로그인페이지로 이동합니다.");
	location.href="${path}/login.do";
}
var proc4 = "${proc4}";
if(proc4=="W"){
	alert("회원탈퇴가 완료되었습니다.\n이용해주셔서 감사합니다.");
	location.href="${path}/login.do";
}

function goDetail(pno){
	location.href="Main.do?pno="+pno;
}

</script>
	

</body>
</html>