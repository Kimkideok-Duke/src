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
	margin:0 0 0 5px;
	width : 55px;
	font-size: 13px;
	margin:5px 0 0 5px;
}
.button:hover{
  background-Color: #65a678;
}
.my-box { 
	padding:50px; 
	margin:auto;
	width: 700px;
}
form{
	float: right;
	display:block;
}
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
<script type="text/javascript">
	function goupt(noticeno){
		if(confirm("수정화면으로 이동하시겠습니까?")){
			location.href="${path}/noticeGoUpdate.do?noticeno="+noticeno;
		}
	}
	function godel(noticeno){
		if(confirm("삭제하시겠습니까?")){
			location.href="${path}/noticeDelete.do?noticeno="+noticeno;
		}
	}
	function gomain(){
		location.href="${path}/noticeList.do";
	}
	
	var proc = "${proc}"
	if(proc=="del"){
		alert("삭제성공\n조회 리스트화면으로 이동!")
		location.href="${path}/noticeList.do";
	}	

</script>
<body>
  <section id="container">
    <div style="width: 100%; flex-grow: 1; position: relative;">
<div class="menu">
    <ul>
    <div class="pm_wrapper" onclick="main()"><img src="a00_com/img/PM.png" width=140px></div>
    <li><a href="#" class="icon"><img src="a00_com/img/schedule.png" width=25px> 일정관리</a></li>
    <li><a href="#" class="icon"><img src="a00_com/img/alarm.png" width=25px> 알림</a></li>
    <li><a href="#" class="icon"><img src="a00_com/img/schedule.png" width=25px> 공지사항</a></li>
    
    <div style="padding-top:430px;">
    <li><a href="#" class="icon" ><img src="a00_com/img/add.png" width=25px> 팀원추가</a></li>
    <li><a href="#" class="icon" ><img src="a00_com/img/mypage.png" width=25px> 마이페이지</a></li>
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

		<div class="out">
		<h1>공지사항</h1>
			<div class="my-box">
				<table class="type09">
					<thead>
						<tr><th>공지번호 | ${notice.noticeno}</th><th>제목 | ${notice.title}</th><th>작성일자 | <fmt:formatDate value="${notice.creatdate}"/></th></tr>
					</thead>
					<tbody>
						<tr><td colspan='3'>${notice.content}</td></tr>
					</tbody>
				</table>
		
				<input type="button" value="수정" onclick="goupt(${notice.noticeno})" class="button">
				<input type="button" value="삭제" onclick="godel(${notice.noticeno})" class="button">
				<input type="button" value="리스트" onclick="gomain()" class="button">
			</div>
		</div>	
        
      </div>
    </div>
  </section>


</body>
<script type="text/javascript">
function main(){
	location.href="main.do"
}
</script>
</html>