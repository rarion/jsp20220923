<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="jsp20220923.chap07.Car"%>
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
<%-- Car 타입의 아이템을 갖는 List를 attribute에 넣고 --%>
<%
Car car1 = new Car();
Car car2 = new Car();
Car car3 = new Car();
car1.setModel("model1");
car1.setPrice(3000);
car2.setModel("model2");
car2.setPrice(1000);
car3.setModel("model3");
car3.setPrice(4000);

List<Car> carList = new ArrayList<>();
carList.add(car1);
carList.add(car2);
carList.add(car3);


pageContext.setAttribute("cars", carList);
%>

<%-- forEach로 탐색 --%>

<c:forEach items="${cars }" var="car">
	<p>${car.model} : ${car.price } </p>
</c:forEach>

<hr>

<table class="table">
	<thead>
		<tr>
			<th>#</th>
			<th>모델</th>
			<th>가격</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${cars }" var="car" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${car.model }</td>
				<td>${car.price }</td>
			</tr>
		</c:forEach>	
	</tbody>
</table>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>