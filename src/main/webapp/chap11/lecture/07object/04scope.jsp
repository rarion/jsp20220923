<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	pageContext.setAttribute("myName", "rion");
	request.setAttribute("myName", "리온");
	
	pageContext.setAttribute("your Name", "이아진");
	request.setAttribute("99name", "soi");
	%>
	
	<p>${myName }</p>
	<p>${requestScope.myName }</p>
	<p>${pageScope["your Name"] }</p>
	<p>${requestScope["99name"] }</p>
</body>
</html>