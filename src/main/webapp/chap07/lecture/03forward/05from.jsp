<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
05.t0.jsp로 포워드
request 파라미터 2개 추가해서 null 출력되지 않도록 코드 완성
--%>

<jsp:forward page="05to.jsp">
	<jsp:param value="24" name="age"/>
	<jsp:param value="a.com" name="email"/>
</jsp:forward>