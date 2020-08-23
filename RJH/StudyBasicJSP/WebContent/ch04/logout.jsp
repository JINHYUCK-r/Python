<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session로그아웃 폼</title>
</head>
<body>
<%
	session.invalidate(); //세션의 속성을 제거한다.
	response.sendRedirect("sessionTestForm.jsp");

%>

</body>
</html>