<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	포함하는 페이지는 ex01_2입니다.<br>
	<%
		String name = request.getParameter("name");
	%>
	<%=name %> 님 환영합니다.
	<hr>
</body>
</html>