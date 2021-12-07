<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	$("#memid").focus();	// ID란에 포커스 주기
}


</script>
<script>
function CheckPwd(){
	var pwd= get.ElementById("pwd");
	var pwd2= get.ElementById("pwd2");

	if(pwd != pwd2){
	alert("암호와 암호확인이 일치하지 않습니다.");
	return false;
	}
	else{ 
		document.FormLogin.onsubmit;
	}

</script>


</head>
<body>
아이디, 암호, 암호확인, 이름은 필수항목입니다.<br>

<form action="join.jsp" method="post" onsubmit="CheckPwd()" id="FormLogin" name="FormLogin">

아이디 :: <input type="text" name="memid" id="memid" required><br>
암호 <input type="password" name="pwd" id="pwd" required><br>
암호확인 :: <input type="password" name="pwd2" id="pwd2" required><br>
이름 :: <input type="text" name="name" id="name" required><br>
<input type="submit" value="제출">
</form>



</body>
</html>