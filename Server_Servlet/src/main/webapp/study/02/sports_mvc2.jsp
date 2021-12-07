<%@page import="java.util.Enumeration"%>
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

request.setCharacterEncoding("utf-8");
response.setContentType("text/html; charset=utf-8");
Enumeration<String> sports = session.getAttributeNames();
String gender = (String) session.getAttribute("gnd");	//obj 타입이므로 형변환 필요

while(sports.hasMoreElements()){
	String sessionName = sports.nextElement().toString();
	String sessionValue = (String) session.getAttribute(sessionName).toString();
	out.println("Name: " + sessionName +"<br>");
	out.println("Value: " + sessionValue +"<br>");
}

out.println("성별 :" + gender + "<br>");
%>
<hr>
id(JSP) :: <%=request.getParameter("id") %><br>
id(EL) :: ${param.id }<br>
성별 :: <%=session.getAttribute("gnd") %><br> 

EL :: ${gnd }<br> 
</body>
</html>