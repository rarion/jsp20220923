<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>



<%
List<String> l1 = (List<String>)request.getAttribute("list1");
Map<String, String> m1 = (Map<String, String>)request.getAttribute("map1");

%>

<h3>List</h3>
<%
if(l1 != null){
	for(int i=0; i<l1.size(); i++){
%>		<p><%= l1.get(i)%></p>
<%
	}
}
%>
<h3>Map</h3>
<%
if(m1 != null){
	for(String key: m1.keySet()){
%>		<p><%=m1.get(key) %></p>
<%
	}
}
%>
