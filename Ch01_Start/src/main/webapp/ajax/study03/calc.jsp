<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

int val11 = Integer.parseInt(request.getParameter("val1"));
int val22 = Integer.parseInt(request.getParameter("val2"));

/* String val1_s = request.getParameter("val1");
String val2_s = request.getParameter("val2");
int val1 = Integer.parseInt(val1_s);
int val2 = Integer.parseInt(val2_s);
int result = val1 + val2;*/

int result = val11 + val22;

/*
어쨌든 parseInt는 필요?
String val1 = request.getParameter("val1");
String val2 = request.getParameter("val2");
int result = Integer.parseInt(val1) + Integer.parseInt(val2);
*/
System.out.println(val11+val22);	//추가
// out.println(val11+val22);			추가 아래와 둘중 하나만 적기
%>
<%=result %>
