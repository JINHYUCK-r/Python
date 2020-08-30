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
	String name = request.getParameter("name");
	String pageName = request.getParameter("pageName");
%>
	포함되는 페이지는 <%=pageName %> 입니다.<br>
	<%=name %> 님 환영합니다.<br>
	<hr>

</body>
</html>