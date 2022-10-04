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
	<c:if test="${not empty param.name and not empty param.address }" var="notEmpty">
		<p>${param.name }님의 주소는 ${param.address }입니다.</p>
	</c:if>
	
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus aliquam numquam iste sit ipsa consequuntur magnam! Atque voluptate debitis voluptatem iste dolore veniam neque magnam itaque obcaecati nulla autem pariatur.</p>

	<c:if test="${ notEmpty }">
		<p>이름과 주소가 모두 있습니다.</p>
	</c:if>
	
</body>
</html>