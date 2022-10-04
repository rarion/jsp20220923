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
	<h3>나이별 추천 영화</h3>
	<c:choose>
		<c:when test="${20 < param.age }">
			<h4>타짜</h4>
		</c:when>
		<c:when test="${15 < param.age }">
			<h4>토르</h4>
		</c:when>
		<c:when test="${7 < param.age }">
			<h4>피노키오</h4>
		</c:when>
		<c:when test="${0 < param.age }">
			<h4>뽀로로</h4>
		</c:when>
		<c:otherwise>
			<h4>나이를 입력해주세요</h4>
		</c:otherwise>
		
		
		
	</c:choose>
</body>
</html>