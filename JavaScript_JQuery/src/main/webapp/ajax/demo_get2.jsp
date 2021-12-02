<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    %>
  First Name : <%=fname %> <br>
  Last Name : <%=lname %> <br>