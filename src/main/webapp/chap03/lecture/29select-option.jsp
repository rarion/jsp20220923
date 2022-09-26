<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
 	<h1>select option 연습</h1>
 	
	<form action="">
	
	<select name="tel" id="">
		<option value="skt">SKT</option>
		<option value="kt">KT</option>
		<option value="lg">LG</option>
	</select>
	
	<select name="foods" id="" multiple>
		<option value="cake">케이크</option>
		<option value="icecream">아이스크림</option>
		<option value="meet">고기</option>
		<option value="other">그 외</option>
	</select>
	
	<input type="submit" value="전송">
	</form>
	
 	<hr>
 	
 	<%
 	String tel = request.getParameter("tel");
 	String[] foods = request.getParameterValues("foods");
 	
 	
 	if (tel == null){
 		tel = "";
 	}
 	
 	if (foods == null){
 		foods = new String[]{};
 	}
 	%>
 	<p>통신사는 <%=tel %>이고 <br>
	선택한 음식들은 <%= String.join(",", foods)  %>입니다.</p>

</body>
</html>