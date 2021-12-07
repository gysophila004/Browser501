<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <form action = "/Server_Servlet/Simple" method="get"> -->
<form action = "../Simple" method="get">
<input type="text" name="type" value="date"><br>
<input type="submit" value="제출"><br>
</form>
<hr>
annotation 방식
<form action = "../Simple_ann" method="get">
<input type="text" name="type" value="date"><br>
<input type="submit" value="제출"><br>
</form>

</body>
</html>