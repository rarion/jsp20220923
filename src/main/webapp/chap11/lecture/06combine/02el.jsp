<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- attribute에 List<Car> 타입 객체 추가 --%>
	
	<%
	List<Car> list = new ArrayList<>();
	Car car1 = new Car();
	car1.setPrice(500);
	car1.setModel("a");
	
	Car car2 = new Car();
	car2.setPrice(300);
	car2.setModel("b");
	
	list.add(car1);
	list.add(car2);
	
	
	request.setAttribute("cars", list);
	%>

	<p>${cars[0].company }</p>
	<p>${cars[0].price }</p>
	<p>${cars[0].model }</p>
	<p>${cars[1].company }</p>
	<p>${cars[1].price }</p>
	<p>${cars[1].model }</p>

</body>
</html>