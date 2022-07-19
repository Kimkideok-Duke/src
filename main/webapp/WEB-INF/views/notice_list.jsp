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
.button{
  float: right;
	background-Color:#7cc290;
	border: 3px solid #7cc290;
	border-radius: 5px;
	text-align: center;
	margin:0 0 0 5px;
	width : 55px;
	font-size: 13px;
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
</head>
<script>
	function goDetail(noticeno){
		location.href="${path}/noticeDetail.do?noticeno="+noticeno;
	}
	function goWrite(){
		location.href="${path}/noticeGoWrite.do";
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
		<form action="${path}/noticeList.do">
			<input name="title" placeholder="제목" value="${notice.title}">
			<input type="submit" value="검색" class="button">
		</form>
			
				<table class="type09">
				<thead>
				<tr><th>No.</th><th>제목</th><th>작성자</th><th>작성일자</th><th>조회수</th></tr>
				</thead>
				<tbody>
				<% int cnt=0; %>
				<c:forEach var="nl" items="${nolist}">
						<c:if test="${nl.pno eq param.pno}">
						<tr ondblclick="goDetail(${nl.noticeno})"><td><%= cnt+=1 %></td><td>${nl.title}</td><td>호스트</td><td><fmt:formatDate value="${nl.creatdate}"/></td><td>${nl.views}</td></tr>
						</c:if>
				</c:forEach>
				</tbody>
				</table>
				<input type="button" value="글등록" onclick="goWrite()" class="button" style="margin:5px 0 0 0;">
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