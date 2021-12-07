<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

int val11 = Integer.parseInt(request.getParameter("val1"));
int val22 = Integer.parseInt(request.getParameter("val2"));
/* String val1_s = request.getParameter("val1");
String val2_s = request.getParameter("val2");
int val1 = Integer.parseInt(val1_s);
int val2 = Integer.parseInt(val2_s);
int result = val1 + val2; */
int result = val11 + val22;
%>
<%=result %>
</body>
</html>