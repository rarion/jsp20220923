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
	<h3>영화 추천</h3>
	<c:choose>
		<c:when test="${param.genre == 'comedy'}">
			코미디 영화
		</c:when>
		<c:when test="${param.genre == 'family'}">
			가족영화
		</c:when>
		<c:when test="${param.genre == 'action'}">
			액션영화
		</c:when>
		<c:otherwise>
			장르를 comedy, family, action 중에서 선택해주세요.
		</c:otherwise>
		
	</c:choose>
</body>
</html>