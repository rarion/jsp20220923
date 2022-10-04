<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ page import="jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>jstl core set : 자바빈의 프로퍼티 변경 시 사용</h3>
	<%
	pageContext.setAttribute("book1", new Book("java", 500));
	%>
	<p>title : ${book1.title }</p>
	<p>title : ${book1.price }</p>
	
	<c:set target="${book1 }" property="title" value="spring"></c:set>
	<p>title : ${book1.title }</p>
	<p>title : ${book1.price }</p>
	
	<%-- 주의 : target 속성에 문자열로 쓰지 않도록 주의 --%>
	<%-- <c:set target="book1" property="title" value="spring"></c:set> --%>
</body>
</html>