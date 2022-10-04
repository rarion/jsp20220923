<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>


<%
request.setAttribute("num1", 99);
request.setAttribute("num2", 77);
request.setAttribute("num3", 73);
request.setAttribute("num4", 69);
request.setAttribute("n5", 7);
request.setAttribute("n6", 4);
request.setAttribute("n7", 70);
request.setAttribute("n8", 7);
request.setAttribute("num9", 101);
request.setAttribute("num10", 100);
%>
<jsp:forword page = 02to.jsp> </jsp:forword>