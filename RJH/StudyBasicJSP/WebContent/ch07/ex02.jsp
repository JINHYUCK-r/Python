<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02</title>
</head>
<body>
<h2>정보를 입력하세요</h2>
<form action="ex02_1.jsp" method="post">
	아이디: <input type="text" name="id"><br>
	비밀번호: <input type="text" name="passwd"><br>
	좋아하는 숫자: <input type="text" name="number"><br>
	<input type="submit" value="제출">
</form>
</body>
</html>