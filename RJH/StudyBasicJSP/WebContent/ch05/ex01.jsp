<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01 / include 액션태그</title>
</head>
<body>
	<form method="post" action="ex01_1.jsp">
	 이름: <input type="text" name="name"> <br>
	 포함할페이지: <input type="text" name="pageName" value="ex01_2.jsp">
	 <input type="submit" value="전송">
	</form>

</body>
</html>