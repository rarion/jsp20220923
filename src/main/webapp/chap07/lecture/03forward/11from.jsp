<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%

List<Person> name = new ArrayList<>();

Person p1 = new Person();
Person p2 = new Person();
Person p3 = new Person();

p1.setName("name1");
p2.setName("name2");
p3.setName("name3");

name.add(p1);
name.add(p2);
name.add(p3);


request.setAttribute("list", name);
%>
	
<jsp:forward page="11to.jsp"></jsp:forward>
