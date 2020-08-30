<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String color = request.getParameter("color");

%>
	<%=name %> 
	빨강
	<img src="../image/img/red.jpg" width ="150">
</body>
</html>