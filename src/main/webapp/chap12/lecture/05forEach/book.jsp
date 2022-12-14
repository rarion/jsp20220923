<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	
	<c:choose>
		<c:when test="${param.country == 'domestic' }">
			<form action="domestic.jsp" >
				장르 : <select name="genre">
					<option value="essay">에세이</option>
					<option value="novel">소설</option>
				</select>
				<input type="submit" value="선택">
			</form>
		</c:when>
		<c:when test="${param.country == 'foreign' }">
			<form action="overseas.jsp">
				장르 : <select name="genre">
					<option value="self-improvement">자기계발</option>
					<option value="novel">소설</option>
				</select>
				<input type="submit" value="선택">
			</form>
		</c:when>
		<c:otherwise>
			분류가 선택되지 않았습니다.
		</c:otherwise>
	</c:choose>
	
	<br>
	<a href="bookSample.jsp">이전 선택창으로 돌아가기</a>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>