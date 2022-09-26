<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로딩시 선택된 상태로 출력</h1>
	<%-- radio버튼, checkbox 요소에 checked 속성이 있으면 로딩시 선택된 상태 --%>
	<form action="">
	<input type="checkbox" name="food" vlaue="pizza"> 
	<input type="checkbox" name="food" vlaue="bibimbab" checked>
	<input type="checkbox" name="food" vlaue="kimchi">
	<input type="checkbox" name="food" vlaue="burger">
	
	<hr>
	
	<input type="radio" name="location" value="home" checked> 집
	<input type="radio" name="location" value="work"> 직장
	<input type="radio" name="location" value="other"> 다른 곳
		
	</form>
</body>
</html>