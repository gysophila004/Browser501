<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
    
    <%    
    Date now = new Date();
    Calendar cal = Calendar.getInstance();
    java.util.Calendar cal2 = java.util.Calendar.getInstance(); 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>
현재 시각 <br>
<%=now %>
<hr>

오늘은<br>
<%= cal.get(Calendar.YEAR) %>년<br>
<%= cal.get(Calendar.MONTH) %>월<br>
<%= cal.get(Calendar.DATE) %>일<br>
입니다.<br>
<hr>

오늘은<br>
<%= cal2.get(Calendar.YEAR) %>년<br>
<%= cal2.get(Calendar.MONTH) %>월<br>
<%= cal2.get(Calendar.DATE) %>일<br>
입니다.<br>

</body>
</html>