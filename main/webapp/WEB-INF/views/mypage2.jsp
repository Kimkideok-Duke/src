<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
 
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="/team55/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="/team55/a00_com/jquery-ui.css" >


<style>
html, body {
	height: 100%;
	width: 100%;
	margin: 0;
	line-height: 1.5;
}

#container { 
	--background-color: white; 
	--border-color: #e6e9ef; 
	--surface-color: #6FF968;
	position: absolute;
	width: 100%;
	height: 100%;
	display: flex;
	flex-direction: column;
	z-index: 999999999;
	opacity: 1;
}

#container .main .mainl-control-component {
	height: 100%;
	position: absolute;
	border-right: 1px solid var(--border-color);
	z-index: 1000001;
	left: 0;
	top: 0;
	box-sizing: border-box;
	background-color: var(--background-color);
	width: 30px;
}

/*nav*/
.menu {
	position: absolute;
	background-color: var(--surface-color);
	z-index: 1;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	display: flex;
}

.menu ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

.menu a, .menu>label {
	display: block;
	height: 60px;
	padding: 20px;
	padding-right: 100px;
	cursor: pointer;
	color: #fff;
	text-decoration: none;
}

.menu a:hover {
	color: #000;
}

.menu ul li:hover, .menu>label:hover {
	background-color: #fff;
	border-radius: 10px 0 0 10px;
}

.menu b {
	padding: 0 0 0 45px; /* 아이콘과 텍스트 사이 여백 */
}

.icon {
	font-weight: bold;
	font-size: 0.9em;
}

.pm_wrapper {
	padding: 0px;
	margin-top: 10px;
	margin-bottom: 20px;
	margin-right: 20px;
	margin-left: 19px;
}

b.title {
	margin-left: 75px;
	margin-top: 50px;
	margin-right: 180px; color : #808080;
	font-weight: 900;
	font-size: 35px;
	width: 100%;
	color: #808080;
}

b.title:after {
	content: "";
	display: block;
	width: 100%;
	border-bottom: 2px solid #cccccc;
	margin: 8px 0px;
}

c.content {
	margin-left: 75px;
	margin-top: 30px;
	margin-right: 180px;
	font-size : 20px;
}

table {
  width: 100%;
  font-size : 15px;
}

th {
  border-bottom: 2px solid #cccccc;
  height: 60px;
}

td {
  border-bottom: 2px solid #cccccc;
  height: 70px;
}
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

  

  <section id="container">
    <div style="width: 100%; flex-grow: 1; position: relative;">
<div class="menu">
    <ul>
    <div class="pm_wrapper" onclick="main()"><img src="a00_com/img/PM.png" width=140px></div>
    <li><a href="#" class="icon"><img src="a00_com/img/schedule.png" width=25px> 일정관리</a></li>
    <li><a href="#" class="icon"><img src="a00_com/img/alarm.png" width=25px> 알림</a></li>
    <li><a href="#" class="icon"><img src="a00_com/img/schedule.png" width=25px> 공지사항</a></li>
    
    <div style="padding-top:100%;">
    <li><a href="#" class="icon" ><img src="a00_com/img/add.png" width=25px> 팀원추가</a></li>
    <li><a href="${path}/mypage2.do" class="icon" ><img src="a00_com/img/mypage.png" width=25px> 마이페이지</a></li>
    <li><a href="${path}/logout.do" class="icon" >로그아웃</a></li>
    </div>
    </ul>
</div>

      <div class="main" style="
        position: absolute;
        background-color: white;
        background-color: var(--background-color);
        z-index: 1000;
        top: 0;
        right: 0;
        bottom: 0;
        height: 100%;
        left: 190px;
        overflow: hidden;
       /* justify-content: center;*/
        /*align-items: center;*/        
        display: flex;
        flex-direction: column;
        border-radius: 20px 0px 0px 0px;">
        <b class="title">마이페이지</b>
        <c class="content">
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
		
	</div>
		</c>
       
        
      </div>
    </div>
  </section>


</body>
<script type="text/javascript">
function main(){
	location.href="main.do"
}
var loginCheck = "<%=session.getAttribute("userId")%>";
if(loginCheck=="null" || loginCheck=="" || loginCheck==null || loginCheck == undefined || 
		( loginCheck != null && typeof loginCheck == "object" && !loginCheck.keys(loginCheck).length )){
	alert("로그아웃 되었습니다.\n로그인페이지로 이동합니다.");
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
</html>