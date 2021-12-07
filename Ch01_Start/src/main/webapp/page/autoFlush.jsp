<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page buffer = "1kb" autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
buffer :: 출력물을 모아놓는 공간<br>
<%
// autoFlush="false" 라면 오버플로우 발생 오류
for(int i=0; i<1000;i++){
	out.println("1234");
}

%>

</body>
</html>