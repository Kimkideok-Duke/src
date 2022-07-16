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
	body{
		background-color:rgb(247,247,247);
	}
	#content_area{
		width:30%;
		height:auto;
		margin:0 auto;
	}
	.page_title{
		text-align:center;
		margin-bottom:50px;
	}
	#content_area input[type=text]{
		width:100%;
		height:40px;
		margin-bottom:20px;
		border-radius:5px;
		border:1px solid gray;
		font-size: 15px;
	}
	#content_area input[type=password]{
		width:100%;
		height:40px;
		margin-bottom:20px;
		border-radius:5px;
		border:1px solid gray;
	}
	#content_area input:focus {
	    border:2px solid #9ad756;
	    outline: none;
	}
	#content_area button{
		background-color:#9ad756;
		border-radius: 5px;
		color:white;
		border: none;
		cursor:pointer;
		height:40px;
		width:100%;
		font-weight:bold;
		font-size:17px;
	}
	#content_area button:hover{
		background-color:#8ec451;
	}
	input[type=checkbox]{
        accent-color: #9ad756;
    }
    #join_link{
    	width:70px;
    	height:20px;
    	margin:0 auto;
    	margin-top:20px;
    }
    #join_link a{
    	text-decoration: none;
    	color:black;
    }
    #join_link a:linked{
    	color:black;
    }
    #join_link a:hover{
    	color:black;
    	text-decoration: underline;
    }
    #join_link a:visited{
    	color:black;
    }
    #join_link a:active{
    	color:black;
    }
    
</style>
<script type="text/javascript">
function setCookie(name, value, expireDay) {
	var today = new Date();
	today.setDate(today.getDate() + expireDay);
	document.cookie = name + '=' + escape(value) + '; path=/; expires='
		+ today.toGMTString() + ';';
}
function getCookie(name) {
	var cook = document.cookie + ';';
	var idx = cook.indexOf(name, 0);
	var val = '';
	if (idx != -1) {
		cook = cook.substring(idx, cook.length);
		begin = cook.indexOf('=', 0) + 1;
		end = cook.indexOf(';', begin);
		val = unescape(cook.substring(begin, end));
	}
	return val;
}
function isEmpty(arg){
	if(arg == "" || arg == null || arg == undefined || 
		(arg != null && typeof arg == "object" && !Object.keys(arg).length)){
		return true;
	}
	return false;
}
</script>
</head>

<body>
<h1 class="page_title">로그인</h1>
<form action="${path}/isMember.do" method="post">
	<div id="content_area">
		<div>
			<h3><label for="id">아이디</label></h3>
			<span>
			<input type="text" id="id" name="id" title="ID" maxlength="12">
			<label for="check_saveid"><span>아이디 저장</span></label>
			<input type="checkbox" id="check_saveid" name="check_saveid" value="saveid"/>
			</span>
		</div>
		
		<div>
			<h3><label for="pw">비밀번호</label></h3>
			<span>
			<input type="password" id="pw" name="pw" title="PSWD" maxlength="16">
			</span>
		</div>
		
		 <button type="button" onclick="login()">로그인</button>
		<div id="join_link">
		 <a href="${path}/join1.do">회원가입</a>
		</div>
	</div>
<script type="text/javascript">
var dist = "${dist}";
if(dist=="Y"){
	alert("${loginId}님 로그인");
	location.href="${path}/chooseProject.do";
}
if(dist=="N"){
	alert("아아디/비밀번호가 다릅니다.");
}
var cookie_id = getCookie('saveId');
if(!isEmpty(cookie_id)){
	var id = document.querySelector("[name=id]");
	var saveId = document.querySelector("[name=check_saveid]");
	id.value = cookie_id;
	saveId.checked = true;
}
	function login(){
		var idObj = document.querySelector("[name=id]");
		var pswdObj = document.querySelector("[name=pw]");
		if(idObj.value==""){
			alert("아이디를 입력해주세요");
			idObj.focus()
			return
		}
		if(pswdObj.value==""){
			alert("비밀번호를 입력해주세요");
			pswdObj.focus()
			return
		}
		var saveId = document.querySelector("[name=check_saveid]");
		if(saveId.checked){
			setCookie('saveId', idObj.value, 3);
		} else {
			setCookie('saveId', 0, -1);
		}
		document.querySelector("form").submit();
	}
	/*
	sessionStorage.setItem("a", b ); // 저장
	sessionStorage.getItem("a"); // b
	sessionStorage.length; // 1
	sessionStorage.key(0); // b
	sessionStorage.removeItem("a"); // 삭제
	sessionStorage.clear(); // 전체삭제
	*/
</script>
</form>
</body>
</html>