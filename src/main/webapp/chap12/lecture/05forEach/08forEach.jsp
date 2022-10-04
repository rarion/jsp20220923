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
	<%-- <c:set var="left" value="3"></c:set>
	<c:set var="right" value="9"></c:set>
	 --%>
	<c:forEach begin="${param.left }" end="${param.right }" var="i">
		<p>${i }</p>
	</c:forEach>
	
</body>
</html>