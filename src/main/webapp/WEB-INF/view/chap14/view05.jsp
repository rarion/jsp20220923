<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<h1>직원명 리스트</h1>
	<a href="${pageContext.request.contextPath }/Servlet27">새 직원 입력하러 가기</a>
	
	<form action="">
			<input type="text" name="keyword" placeholder="이름을 입력하세요" value="${param.keyword }">
		<button class="btn btn-primary"><i class="fa-solid fa-magnifying-glass"></i></button>
<!-- 		<input type="submit" value="검색"> -->
	</form>
	
	<ul>
		<c:forEach items="${employeeList }" var="emp">
			<li>${emp.firstName } ${emp.lastName }</li>
		</c:forEach>
	</ul>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>