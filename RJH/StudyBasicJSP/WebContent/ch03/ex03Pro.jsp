<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!-- 폼으로 부터 넘어온 데이터의 한글이 깨지지 않게 처리 -->
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인성공/실패 처리</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");

		if (id.equals("abcd") && password.equals("z1234")) {
	%>
	로그인에 성공하셨습니다.
	<%
		} else {
	%>
	로그인에 실패하셨습니다.
	<%
		}
	%>
</body>
</html>