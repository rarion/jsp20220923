<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
	<%-- <%
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
	 --%>

		
 	<c:if test="${param.genre=='essay'}">
		<h4>에세이</h4>
		전혜린 에세이 
		<a href="http://www.yes24.com/Product/Goods/89509079" >구매하러가기</a>
		<br>
		흐르는 강물처럼 
		<a href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=&barcode=9791155859766&NaPm=ct%3Dl8ty9lvc%7Cci%3Daae5daa447d7437189beb498f510b747520663c8%7Ctr%3Dboknx%7Csn%3D5342564%7Chk%3De8ec42b82f67a86604f1d947905c9f0f59799bd0">
		구매하러가기</a>
		
		<hr>
		<a href="#">더 많은 도서보기</a> <br>
		<a href="book.jsp?country=domestic">선택창으로 돌아가기</a>
		
	</c:if>
	<c:if test="${param.genre=='novel'}">
		<h4>소설</h4>
		작고 가벼운 우울
		<a href="https://front.wemakeprice.com/product/131652728?utm_source=naver_book&utm_medium=PRICE_af&utm_campaign=null&NaPm=ct%3Dl8tydbcw%7Cci%3Df5c29308660bb51da9dd1b04a9f4c778bdfe0258%7Ctr%3Dboknx%7Csn%3D197023%7Chk%3D5de0975e3dbfa01a9c6aaddb8b6613199f30304f">
		구매하러가기</a>
		<br>
		내가 너라면 자살한다
		<a href="" onclick="alert('구매가 불가능한 상품입니다')"> 구매하러가기</a>
		<br>
		안개속에 지다
		<a href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=&barcode=9788972655701&NaPm=ct%3Dl8v30nww%7Cci%3Dd6e371c1c952706b9f20b9300a25662a2f88d3a8%7Ctr%3Dboksl1%7Csn%3D5342564%7Chk%3D041c248cb5250d1008660cfe6447fa13b7e53878">
		구매하러가기</a>
		<hr>
		<a href="#">더 많은 도서보기</a> <br>
		<a href="book.jsp">선택창으로 돌아가기</a>
	</c:if>
	<c:if test="${empty param.genre }" >
		도서가 선택되지 않았습니다.
	<a href="book.jsp?country=domestic">돌아가기</a>
	</c:if> 
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>