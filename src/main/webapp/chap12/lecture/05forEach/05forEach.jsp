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
	<h3>값을 거꾸로 넣을 수 없음 (begin이 end보다 클 수 없음)</h3>
	
	<h3>begin이 0보다 작을 수 없음</h3>
	
	<h3>1씩 증가하지 않을 수 있음 _ step 속성으로 얼마씩 증가할 지 결정 (step > 0)</h3>
	<c:forEach begin="1" end="9" step="2" var="i">
		${i }
	</c:forEach>

</body>
</html>