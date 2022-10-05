<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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

<%
List<List<String>> genre = new ArrayList<>();

List<String> essay = new ArrayList<>();
essay.add("전혜린 에세이");
essay.add("흐르는 강물처럼");

List<String> novel = new ArrayList<>();
novel.add("작고 가벼운 우울");
novel.add("내가 너라면 자살한다");
novel.add("안개속에 지다");

genre.add(essay);
genre.add(novel);

pageContext.setAttribute("genre", genre );
%>
	<c:if test="${param.genre=='essay'}">]
		<h4>에세이</h4>
		<c:forEach items="${essay }" var="books1">
		
		</c:forEach>
	
	
	</c:if>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>