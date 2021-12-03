<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 성공 ::<br>
JSP :: <%=session.getAttribute("ids") %><br>
JSP :: <%=session.getAttribute("pws") %><br> 
EL :: ${ids }<br>
EL :: ${pws }<br> 
<%
// out.println("<html><body>ID : "+id+"<br>비밀번호 : "+pwd+"<br>완료</body></html>");

%>
</body>
</html>