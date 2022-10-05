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
	<c:choose>
		<c:when test="${param.genre == 'self-improvement' }">
			<h4>자기계발</h4>
			카네기 인간관계론
			<a href="http://www.yes24.com/Product/Goods/79297023">구매하러가기</a>
			<br>
			카네기 처세술
			<a href="http://www.yes24.com/Product/Goods/73310">구매하러가기</a>
			<br>
			젊은 놈의 처세론
			<a href="#" onclick="alert('구매가 불가능한 상품입니다')">구매하러가기</a>
			</a> 
			<hr>
			<a href="#">더 많은 도서보기</a> <br>
			<a href="book.jsp?country=foreign">선택창으로 돌아가기</a>	
		</c:when>
		<c:when test="${param.genre == 'novel' }">
			<h4>소설</h4>
			인간조건
			<a href="https://emart.ssg.com/item/itemView.ssg?itemId=1000058141806&siteNo=6001&ckwhere=ssg_naver&appPopYn=n&utm_medium=PCS&utm_source=naver&utm_campaign=naver_pcs&NaPm=ct%3Dl8v2yhzc%7Cci%3D87102803251caf7e45105de4a3d43db323fbbbe1%7Ctr%3Dboksl1%7Csn%3D218835%7Chk%3D156a436bc6914b50972c55b2005440196afc61d3">구매하러가기</a>
			<br>
			소설 프로이트
			<a href="http://www.yes24.com/Product/Goods/102010593">구매하러가기</a>
			<hr>
			<a href="#">더 많은 도서보기</a> <br>
			<a href="book.jsp?country=foreign">선택창으로 돌아가기</a>			
		</c:when>
		<c:otherwise>
			도서가 선택되지 않았습니다.
			<a href="book.jsp?country=foreign">선택창으로 돌아가기</a>
		</c:otherwise>
	</c:choose>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>