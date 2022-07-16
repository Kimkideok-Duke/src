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
		padding-bottom: 400px;
	}
	#content_area{
		width:50%;
		height:auto;
		margin:0 auto;
		margin-left:35%
	}
	.page_title{
		text-align:center;
		margin-bottom:50px;
	}
	#content_area input[type=text]{
		width:50%;
		height:40px;
		margin-bottom:20px;
		border-radius:5px;
		border:1px solid gray;
	}
	#content_area input[type=password]{
		width:50%;
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
		height:30px;
	}
	#content_area button:hover{
		background-color:#8ec451;
	}
	input[type=checkbox]{
        accent-color: #9ad756;
    }
    #join_btn button{
    	background-color:#9ad756;
		color:white;
		border: none;
		cursor:pointer;
		height:40px;
		width:50%;
		font-weight:bold;
		font-size:17px;
		color:white;
    } 
    .tooltip{
    	font-size: 12px;
    	color:gray;
    }
    #alert_input{
    	text-decoration: none;
    }
	#alert_input:hover{
    	text-decoration: underline;
    	cursor:pointer;
    }
    #pwcheck_info{
    	font-size:15px;
    	display:block;
    }
    #idcheck_result{
    	display:block;
    	font-size:15px;
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
		$("#id_check_btn").click(function(){
			var inputId = $("[name=id]").val();
			var idPattern = /^(?=.*[a-z])(?=.*\d)[a-z0-9_-]{6,12}$/;
			if(inputId==""){
				alert("아이디를 입력해주세요.");
				$("[name=id]").focus();
				return;
			}
			if(inputId.length < 6 || inputId.length >12 || !inputId.match(idPattern)){
				alert("아이디는 6~12자 영문+숫자 조합입니다.");
				$("[name=id]").focus();
				return;
			}
			
			$.ajax({
				url:"${path}/checkidAjax.do",
				data:"id="+inputId,
				dataType:"json",
				success:function(data){
					$("[name=id]").val(data.idvalue);
					if(data.idcheckresult=="Y"){
						console.log("3")
						$("[name=idcheck]").val(data.idcheckresult);
						$("#idcheck_result").html("사용가능한 아이디입니다.").css("color","blue");
					}
					if(data.idcheckresult=="N"){
						console.log("4")
						$("[name=idcheck]").val(data.idcheckresult);
						$("#idcheck_result").html("중복된 아이디입니다.").css("color","red");
					}
				}
			});
		});
	});

</script>
</head>

<body>
<h1 class="page_title">회원가입</h1>
<form action="${path}/joinAccount.do" method="post">
	<div id="content_area">
		<div>
			<h3><label for="id">아이디<span class="tooltip">영문+숫자 조합으로 6~12자리 입니다.</span></label></h3>
			<span>
			<input type="text" id="id" name="id" title="ID" maxlength="12" value="">
			</span>
			<button type="button" id="id_check_btn"><span>아이디 중복확인</span></button>
			<input type="hidden" name="idcheck" value=""/>
			<span id="idcheck_result"></span>
		</div>
		
		<div>
			<h3><label for="pw">비밀번호<span class="tooltip">영문+숫자 조합으로 8~16자리 입니다.</span></label></h3>
			<span>
			<input type="password" id="pw" name="pw" title="PSWD1" maxlength="16">
			</span>
			<h3><label for="pswd2">비밀번호 확인</label></h3>
			<span>
			<input type="password" id="pswd2" name="pswd2" title="PSWD2" maxlength="16" onkeyup="pwcheck()"/>
			<input type="hidden" id="pwcheck_var" name="pwcheck_var" value=""/>
			<span id="pwcheck_info"></span>
			</span>
		</div>
		
		<div>
			<h3><label for="name">이름</label></h3>
			<span>
			<input type="text" id="name" name="name" title="NAME" maxlength="12">
			</span>
		</div>
		
		<div>
			<h3><label for="email">이메일<span class="tooltip">이메일 형식을 지켜주세요.</span></label></h3>
			<span>
			<input type="text" id="email" name="email" title="EMAIL" maxlength="30">
			</span>
			<button type="button" onclick=""><span>인증번호 발송</span></button>
		</div>
		
		<div>
			<h3><label for="pass_num">인증번호</label></h3>
			<span>
			<input type="text" id="pass_num" name="pass_num" title="PASS_NUM" maxlength="6" placeholder="인증번호 입력">
			</span>
		</div>
		<div id="join_btn">
		 <button type="button" onclick="join()"><span>가입하기</span></button>
		 <label for="agreecheck"><span id="alert_input">알림설정 on</span></label>
		 <input type="checkbox" id="agreecheck" name="agreecheck" onchange="isagree()" value=""/>
		 <input type="hidden" id="agree" name="agree" value="1"/>
		</div>
	</div>
</form>

<script type="text/javascript">
	var joinresult = "${joinresult}";
	if(joinresult=="Y"){
		alert("회원가입이 완료되었습니다.\n로그인 페이지로 이동합니다.");
		location.href="${path}/login.do";
	}
	
	function isagree(){
		var checkbox = document.getElementById('agreecheck');
		var is_checked = checkbox.checked;
		if(is_checked){
			document.querySelector("[name=agree]").value="0";
		}else{
			document.querySelector("[name=agree]").value="1";
		}
	}
	function join(){
		var idObj = document.querySelector("[name=id]");
		var pswd1Obj = document.querySelector("[name=pw]");
		var pswd2Obj = document.querySelector("[name=pswd2]");
		var nameObj = document.querySelector("[name=name]");
		var emailObj = document.querySelector("[name=email]");
		var pass_numObj = document.querySelector("[name=pass_num]");
		var pwcheckObj = document.querySelector("#pwcheck_var");
		var idcheckObj = $("[name=idcheck]").val();
		var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var pwPattern = /^(?=.*[a-z])(?=.*\d)[a-z0-9_-]{8,16}$/;
		if(idObj.value==""){
			alert("아이디를 입력해주세요");
			idObj.focus();
			return
		}
		if(idcheckObj != "Y"){
			alert("아이디 중복확인을 해주세요");
			return
		}
		if(pswd1Obj.value==""){
			alert("비밀번호를 입력해주세요");
			pswd1Obj.focus();
			return
		}
		if(pswd1Obj.length < 8 || pswd1Obj.length > 16 || !pswd1Obj.value.match(pwPattern)){
			alert("비밀번호는 8~16자 영문+숫자 조합입니다.");
			pswd1Obj.focus();
			return
		}
		if(nameObj.value==""){
			alert("이름을 입력해주세요");
			nameObj.focus();
			return
		}
		if(emailObj.value==""){
			alert("이메일을 입력해주세요");
			emailObj.focus();
			return
		}
		if(pwcheckObj.value==""){
			alert("비밀번호를 확인해주세요.");
			pswd2Obj.focus();
			return			
		}
		if(!emailObj.value.match(emailPattern)){
			alert("이메일 형식이 올바르지 않습니다.")
			emailObj.focus();
			return
		}
		document.querySelector("form").submit();
	}
	function pwcheck() {
	    var pw1 = document.querySelector("[name=pw]").value;
	    var pw2 = document.querySelector("[name=pswd2]").value;
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
</script>
</body>
</html>