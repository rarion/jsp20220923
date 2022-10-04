<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 구구단 출력 --%>
	<%-- request parameter "dan" --%>
	<form action="03forEach.jsp">
		<input type="number" name="dan">
		<input type="submit" value="출력">
	</form>


	<c:if test="${not empty param.dan }" var="has">
		<h3>구구단 ${param.dan }단 출력</h3>
		<c:forEach begin="1" end="9" var="x">
			${param.dan } X ${x } = ${param.dan * x } <br>
		</c:forEach>
	</c:if>
	<c:if test="${not has }">
		<h3> 원하는 단을 입력하세요</h3>
	</c:if>
	
</body>
</html>