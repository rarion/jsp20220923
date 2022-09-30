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
	<form action="13paramValues-to.jsp">
		<input type="date" name="date" value=2022-09-30> <br>
		
		<select name="prod" id="" multiple="" size=5>
			<option value="ipad">ipad</option>
			<option value="tv">tv</option>
			<option value="notebook">notebook</option>
			<option value="product4">product4</option>
			<option value="product5">product5</option>
		</select>
		<input type="submit" value="전송">
		
	</form>
</body>
</html>