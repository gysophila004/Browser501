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
현재 페이지는 <b>responseResult.jsp</b>
<%
String id = request.getParameter("id");
out.println("id : " + id+ "<hr>");

String ids = (String) request.getAttribute("ids");	// object에서 string으로 형변환


%>
</body>
</html>