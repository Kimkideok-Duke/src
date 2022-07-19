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
<title>아이템 관리</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
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
  width: 70%;
  font-size : 15px;
  margin-left:150px;
  margin-top:30px;
}

th {
  border-bottom: 2px solid #cccccc;
  height: 60px;
  text-align: center;
}

td {
  border-bottom: 2px solid #cccccc;
  height: 70px;
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
	   
      <%-- 
      
      --%>   
   });
	function goMain(){
		location.href="${path}/Main.do"
	}
	

</script>
</head>

<body>
<section id="container">
    <div style="width: 100%; flex-grow: 1; position: relative;">
<div class="menu" style="height: 120%;">
    <ul>
    <div class="pm_wrapper" onclick="main()"><img src="a00_com/img/PM.png" width=140px></div>
    <li><a href="${path}/Main.do" class="icon"><img src="a00_com/img/schedule.png" width=25px> 일정관리</a></li>
    <li><a href="${path}/getAlert.do" class="icon"><img src="a00_com/img/alarm.png" width=25px> 알림</a></li>
    <li><a href="${path}/noticeList.do?pno=${slist.get(0).pno}" class="icon"><img src="a00_com/img/schedule.png" width=25px> 공지사항</a></li>
    
    <div>
    <li><a href="${path}/getMemberList.do?pno=${slist.get(0).pno}" class="icon" ><img src="a00_com/img/add.png" width=25px> 팀원관리</a></li>
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
        height: 150%;
        left: 190px;
        overflow: hidden;
       /* justify-content: center;*/
        /*align-items: center;*/        
        display: flex;
        flex-direction: column;
        border-radius: 20px 0px 0px 0px;">

<form method="post">
	<input type="hidden" name="itemno" value="${schedule.itemno }"/>
	<input type="hidden" name="pno" value="${schedule.pno }"/>
	<div>
	아이템 <input name="item" value="${schedule.item }"/></div>
	진행도 <select name="progress">
		<option value="기본" selected>기본</option>
		<option value="진행중">진행중</option>
		<option value="막힘">막힘</option>
		<option value="완료">완료</option>
		</select>
	마감일 <input type="date" name="deadline_s" value="${schedule.deadline}" /> 
	댓글 <input name="comm" value="${schedule.comm }"/>
	<input name="auth" value="${schedule.auth }"/>
	<button type="button" onclick="updateProc()">수정</button>
	<button type="button" onclick="deleteProc()">삭제</button>
	<button type="button" onclick="goMain()">메인화면</button>	
</form>

     </div>
  </div>
</section>
<script type="text/javascript">
function updateProc(){
	if(confirm("수정하시겠습니까?")){
		$("form").attr("action","${path}/updateSchedule.do");
		$("form").submit();
	}
}
function deleteProc(){
	if(confirm("삭제하시겠습니까?")){
		$("form").attr("action","${path}/deleteSchedule.do");
		$("form").submit();
	}
}
var proc = "${proc}";
if(proc=="upt"){
	alert("수정성공!\n메인화면으로 이동합니다");
	location.href="${path}/Main.do";
}
if(proc=="del"){
	alert("삭제성공!\n메인화면으로 이동합니다");
	location.href="${path}/Main.do";
}
</script>     

</body>
</html>