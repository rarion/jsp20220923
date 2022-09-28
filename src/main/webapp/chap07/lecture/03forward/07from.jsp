<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
request.setAttribute("num1", 24); 
request.setAttribute("num2", 28);
%>

<jsp:forward page="07to.jsp"></jsp:forward>