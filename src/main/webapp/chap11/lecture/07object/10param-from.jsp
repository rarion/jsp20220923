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
	<%-- form 요소 작성(post 방식 전송) --%>
	
	<form action="10param-to.jsp" method="post">
		<input type="text" name="email" placeholder="이메일 입력"><br>
		<input type="text" name="phone" placeholder="전화번호 입력"><br>
		<input type="text" name="product" placeholder="상품명 입력"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>