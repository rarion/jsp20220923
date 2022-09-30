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
	java.util.List<String> l = java.util.List.of("iron", "cap", "widow");
	request.setAttribute("attr1", l);
	request.setAttribute("attr2", 0);
	request.setAttribute("a", 1);
	request.setAttribute("z", 2);
	request.setAttribute("abc", "2");
	request.setAttribute("def", "two");
	
	%>
	
	<p>${attr1[0] }</p> <%-- iron --%>
	<p>${attr1[attr2]}</p> <%-- iron --%>
	<p>${attr1[1] }</p> <%-- cap --%>
	<p>${attr[a] }</p> <%-- cap --%>
	<p>${attr[z] }</p> <%-- widow --%>
	<p>${attr[abc] }</p> <%-- widow --%>
	<%-- <p>${attr[def] }</p> --%> <%-- exception --%>
	<p></p>
</body>
</html>