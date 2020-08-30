<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04_from</title>
</head>
<body>
<!-- from 에서 값을 to로 넘겨서 출력 -->
<%
	String name = "홍길동";
	String hobby = "eSports";
%>
<jsp:forward page="ex04_to.jsp">
	<jsp:param value="<%=name %>" name="name"/>
	<jsp:param value="<%=hobby %>" name="hobby"/>
</jsp:forward>

</body>
</html>