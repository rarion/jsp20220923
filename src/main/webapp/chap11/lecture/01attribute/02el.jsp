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
	<%-- 여기에 attribute를 추가하는 코드 작성 --%>
	<%
	request.setAttribute("myattr2", "java");
	%>
	<p>${myattr2}</p> <%-- java라고 출력되도록0 --%>
	
</body>
</html>