<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
URL :: http://localhost:8080/Server_servlet/simple <br>
type=date일 경우 : 날짜 출력<br><hr>
속성(attribute/setAttribute-getAttribute)으로 전달할 경우 속성으로 받기 <br>
결과(JSP) : <%=request.getAttribute("result") %> <br>
결과(EL) : ${result } <hr>


Parameter로 입력한 type값을 받아오기<br>

결과2(JSP) : <%=request.getParameter("type") %> <br>
처음 simple.jsp에서 넘겨받았던 type을(Parameter) servlet측에서 별도 언급 없이 여기까지 전달 가능<br>
<br>
결과2(JSP) : <%=request.getParameter("test") %> <br>
결과(EL) : ${param.test } <br>
</body>
</html>