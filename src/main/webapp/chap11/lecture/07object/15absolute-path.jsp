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
	<h3>절대 경로 작성</h3>
	<a href="14pageContext.jsp">상대경로로 14pageContext.jsp 이동</a> <br>
	<a href="<%=request.getContextPath() %>/chao11/lecture/07object/14pageContext.jsp">절대경로로 14pageContext.jsp 이동</a>
	<a href="${pageContext.request.contextPath }/chao11/lecture/07object/14pageContext.jsp">절대경로로 14pageContext.jsp 이동</a>
</body>
</html>