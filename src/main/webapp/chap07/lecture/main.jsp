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

<%@ include file="sub.jsp" %>

<jsp:include page="sub.jsp">
	<jsp:param value="senubin" name="name"/>
</jsp:include>

<jsp:forward page="sub.jsp"></jsp:forward>

jsp:
</body>
</html>