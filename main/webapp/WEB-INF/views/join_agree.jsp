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
		text-align:center;
	}
	.page_title{
		text-align:center;
		margin-bottom:50px;
	}
	.iframe_agree{
		width:100%;
		height:200px;
	}
	input[type=checkbox]{
        accent-color: #9ad756;
    }
    #content_area button{
    	background-color:#9ad756;
    	border-radius:5px;
		color:white;
		border: none;
		cursor:pointer;
		height:40px;
		width:100%;
		font-weight:bold;
		font-size:17px;
		margin-top:20px;
    }
	#content_area button:hover{
		background-color:#8ec451;
	}
</style>
</head>

<body>
<h1 class="page_title">이용약관 동의</h1>
	<div id="content_area">
		<div>
			<h3>프로젝트 매니저 서비스 이용약관 동의</h3>
		</div>
		<div>
			<iframe src="${path}/agreeInfo.do" class="iframe_agree"></iframe>
		</div>
		<label for="check_agree"><span>서비스 이용약관에 동의합니다.</span></label>
		<input type="checkbox" id="check_agree" name="check_agree" value="" />
		<div>
			<button type="button" onclick="go_join()"><span>다음</span></button>
		</div>
	</div>
<script type="text/javascript">
	function go_join(){
		  const checkbox = document.getElementById('check_agree');
		  const is_checked = checkbox.checked;
		  if(is_checked){
			  location.href="${path}/join2Ajax.do";
		  }else{
			  alert("서비스 이용약관 동의가 필요합니다.");
		  }
	}
</script>
</body>
</html>