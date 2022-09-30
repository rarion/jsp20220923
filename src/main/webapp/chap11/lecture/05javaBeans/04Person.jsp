<%@page import="jsp20220923.chap07.Person"%>
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
	<%--
	두개의 Person객체를 attribute로 추가하고
	property(name, age, alive)를 el로 출력하는 코드 작성 
	 --%>
	<%
	Person p1 = new Person();
	p1.setName("name1");
	p1.setAge(28);
	p1.setAlive(true);
	
	Person p2 = new Person();
	p2.setName("name2");
	p2.setAge(24);
	p2.setAlive(false);
	
	request.setAttribute("person1", p1);
	request.setAttribute("person2", p2);
	%>
	
	<p>${person1.name }</p>
	<p>${person1.age }</p>
	<p>${person1.alive }</p>
	<p>${person2.name }</p>
	<p>${person2.age }</p>
	<p>${person2.alive }</p>
	
</body>
</html>