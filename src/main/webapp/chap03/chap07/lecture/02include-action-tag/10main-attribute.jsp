<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
List<String> list1 = List.of("ironman", "captain", "panther", "widow");
Map<String, String> map1 = Map.of("jisu", "bp", "v", "bts");

request.setAttribute("list1", list1);
request.setAttribute("map1", map1);

%>

<div>
	<jsp:include page="10sub-attribute.jsp"></jsp:include>
</div>

</body>
</html>