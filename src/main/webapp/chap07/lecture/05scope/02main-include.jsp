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
	<h1>01main.jsp</h1>
	
	<%
	pageContext.setAttribute("page1", "page attr1");
	request.setAttribute("req1", "req attr1");
	// session, application에 attribute(속성) 추가
	session.setAttribute("session1", "session attr1");
	application.setAttribute("app1", "app attr1");
	// sub.jsp에서 꺼내는 코드 작성
	%>
	
	<div>
	<jsp:include page="02sub-include.jsp"></jsp:include>
	</div>
	
	<%= pageContext.getAttribute("page1") %>
</body>
</html>