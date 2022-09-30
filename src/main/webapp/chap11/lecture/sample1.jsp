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
	<%
	request.setAttribute("Attribute1", "val1");
	String[] fruit = {"apple", "strawberry", "plum", "peach" };
	request.setAttribute("String1", fruit);
	List<String> books1 = List.of("까마우지", "흐르는 강물처럼", "인간조건");
	request.setAttribute("books1", books1);
	Map<String, Book> books2 = new HashMap<>();
	Book b1 = new Book("카네기 처세술", 5000);
	Book b2 = new Book("카네기 인간관계론", 6000);
	Book b3 = new Book("인간조건", 4000);
	
	books2.put("Dale Carnegie", b1);
	books2.put("Dale Carnegie", b2);
	books2.put("Andre Malraux", b3);
	
	request.setAttribute("books2", books2);
	
	Map<String, List<Book>> book = new HashMap<>();
	
	
	
	

	%>

	<form action="">
		
	</form>

</body>
</html>