<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="forward.png"><br>
<img src="redirect.jpg"><br>
현재 페이지는 <b>responseRedirect.jsp</b><br>
<%
request.setAttribute("ids","abcd");
response.sendRedirect("responseResult.jsp?id=hong");
%>
redirect 아래의 내용
</body>
</html>