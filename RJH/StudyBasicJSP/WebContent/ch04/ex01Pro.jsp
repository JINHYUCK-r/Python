<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01Pro</title>
</head>
<body>
<h2>학생정보</h2>
<%
	String studentId = request.getParameter("studentId");
	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
%>
	학번 : <%=studentId %> <br>	
	이름 : <%=name %>	<br>
	전공 : <%=subject%><br>

</body>
</html>