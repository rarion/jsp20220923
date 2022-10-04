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
	books2.put("Andre Malraux", b2);
	
	request.setAttribute("books2", books2);
	
	Map<String, List<Book>> book = new HashMap<>();
	
	List<Book> books3 = new ArrayList<>();
	List<Book> books4 = new ArrayList<>();
	
	Book book1 = new Book();
	Book book2 = new Book();

	
	/* 국내저자 외국저자 */
	books3.add(book1);
	books3.add(book2);
	
	book1.setTitle("흐르는 강물처럼");
	book1.setPrice(7000);
	book2.setTitle("작고 가벼운 우울");
	book2.setPrice(3500);
	books3.add(new Book("전혜린 에세이", 8000));
	
	books4.add(b1);
	books4.add(b2);
	books4.add(b3);
	
	book.put("domestic", books3);
	book.put("overseas", books4);
	
	request.setAttribute("book", book);
	
	
	%>
	
	<p>${book.domestic[0].title}</p>
	<p>${book.domestic[0].price}</p>
	<p>${book.overseas[2].title}</p>
	<p>${book.overseas[2].price}</p>
	<p>${books2["Dale Carnegie"].title }</p>
<!-- 	<form action="">
		
	</form>
 -->
</body>
</html>