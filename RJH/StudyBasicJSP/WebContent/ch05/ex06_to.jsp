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
	String color = request.getParameter("color");
	String name = request.getParameter("name");
	color = color+".jsp";
	
%>

<jsp:forward page="<%=color%>">
<jsp:param value="<%=name %>" name="name"/>
</jsp:forward>

</body>
</html>