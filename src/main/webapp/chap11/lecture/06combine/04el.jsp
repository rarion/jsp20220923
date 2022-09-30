<%@page import="jsp20220923.chap07.*"%>
<%@page import="java.util.*"%>
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
	두개의 entry를 가진 Map<String, Person> 타입 객체를 attribute에 넣고
	entry의 value들의 프로퍼티를 el로 출력하는 코드 작성
	--%>
	
	<%
	Map<String, Person> map = new HashMap<>();
	
	Person p1 = new Person();
	p1.setName("rion");
	p1.setAge(24);
	p1.setAlive(true);
	
	Person p2 = new Person();
	p2.setName("bin");
	p2.setAge(26);
	p2.setAlive(false);
	
	map.put("p1", p1);
	map.put("p2", p2);
	
	
	
	request.setAttribute("people", map);
	
	%>
	
	<p>${people.p1.name }</p>
	<p>${people.p1.age }</p>
	<p>${people.p1.alive }</p>
	<p>${people.p2.name }</p>
	<p>${people.p2.age }</p>
	<p>${people.p2.alive }</p>
	
</body>
</html>