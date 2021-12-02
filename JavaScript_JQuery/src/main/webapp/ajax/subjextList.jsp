<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String[] subj = { "Java", "Oracle", "Web", "JST", "Spring" };
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
	<%
	for(String i : subj){
		
		System.out.println("console out : " + i);
		%>
		
		<li><%=i %></li>
		
		<% } %>

	</ul>
</body>
</html>