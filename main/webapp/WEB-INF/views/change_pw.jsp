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
	button{
		border-radius: 5px;
	}
	#content_area{
		width:30%;
		height:auto;
		margin:0 auto;
		margin-top:5%;
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
		color:white;
		border: none;
		cursor:pointer;
		height:40px;
		width:100%;
		font-weight:bold;
		font-size:17px;
	}
	input[type=checkbox]{
        accent-color: #9ad756;
    }
    .tooltip{
    	font-size: 12px;
    	color:gray;
    }
    #pwcheck_info{
    	font-size:15px;
    	display:block;
    	margin-bottom:20px;
    }
    
</style>
</head>

<body>
<h1 class="page_title">비밀번호 변경</h1>
<form action="${path}/pwChange.do" method="post">
	<div id="content_area">
		<div>
			<h3><label for="pw">새 비밀번호<span class="tooltip">영문+숫자 조합으로 8~16자리 입니다.</span></label></h3>
			<span>
			<input type="password" id="pw" name="pw" title="PSWD1" maxlength="16">
			</span>
		</div>
		
		<div>
			<h3><label for="pw2">비밀번호 확인</label></h3>
			<span>
			<input type="password" id="pw2" name="pw2" title="PSWD2" maxlength="16"  onkeyup="pwcheck()">
			</span>
			<input type="hidden" id="pwcheck_var" name="pwcheck_var" value=""/>
			<span id="pwcheck_info"></span>
		</div>
		
		 <button type="button" onclick="updatePw()"><span>비밀번호 변경</span></button>
	</div>
</form>
<script type="text/javascript">
function updatePw(){
	var pwObj = document.querySelector("[name=pw]");
	var pwCehckObj = document.querySelector("#pwcheck_var");
	var pwPattern = /^(?=.*[a-z])(?=.*\d)[a-z0-9_-]{8,16}$/;
	if(pwObj.value==""){
		alert("변경할 비밀번호를 입력해주세요.");
		return
	}
	if(pwCehckObj.value != "Y"){
		alert("비밀번호확인을 해주세요");
		return
	}
	if(pwObj.length < 8 || pwObj.length > 16 || !pwObj.value.match(pwPattern)){
		alert("비밀번호는 8~16자 영문+숫자 조합입니다.");
		pwObj.focus();
		return
	}
	document.querySelector("form").submit();
}

function pwcheck() {
	    var pw1 = document.querySelector("[name=pw]").value;
	    var pw2 = document.querySelector("[name=pw2]").value;
	    if(pw1 != '' && pw2 !='') {
			if(pw1 == pw2) {
				    document.querySelector("#pwcheck_info").innerHTML="비밀번호가 일치합니다.";
				    document.querySelector("#pwcheck_info").style.color="blue";
					document.querySelector("#pwcheck_var").value="Y";
			} else {
			        document.querySelector("#pwcheck_info").innerHTML="비밀번호가 일치하지 않습니다.";
			        document.querySelector("#pwcheck_info").style.color="red";
					document.querySelector("#pwcheck_var").value="";
			}
		}
	}

var proc3 = "${proc3}";
if(proc3=="Y"){
	alert("비밀번호가 변경되었습니다.\n마이페이지로 이동합니다.");
	location.href="${path}/mypage.do";
}
</script>
</body>
</html>