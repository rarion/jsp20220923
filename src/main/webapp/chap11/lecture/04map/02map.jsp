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
]
	<%-- map1이라는 이름의 Map 객체를 attribute에 넣기 --%>
	<%
	Map<String, String> map = new HashMap<>();
	map.put("x", "row");
	map.put("y", "column");
	map.put("abc", "val3");
	map.put("still doll", "silence");
	request.setAttribute("map1", map);
	%>
	
	<p>${map1.x}</p>
	<p>${map1.y}</p>
	<p>${map1.abc}</p>
	<%-- <p>${map.still doll }</p> --%>
</body>
</html>