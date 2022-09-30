<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
	<%-- map이라는 이름의 Map타입 attribute 추가 --%>
	<%
	Map<String, String> map = new HashMap<>();
	map.put("abc", "val1");
	map.put("my key", "my val");
	map.put("def", "val2");
	map.put("2", "two");
	request.setAttribute("map", map);
	%>


	<p>${map.abc }</p>
	<p>${map["my key"] }</p>
	<p>${map["def"] }</p>
	<p>${map["2"] }</p>
	

</body>
</html>