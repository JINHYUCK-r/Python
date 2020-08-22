<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>색 선택</title>
</head>
<body>
<!-- 좋아하는 색 출력하는 페이지 -->
<form method="post" action="ex05Pro.jsp">
	이름 <input type="text" name="name"> <br>
	<select name="color" required>
	<option value="빨강" selected>빨강</option>
	<option value="노랑">노랑</option>
	<option value="파랑">파랑</option>
	<option value="기타">기타</option>
	</select>
	<input type ="submit" value="확인">
	</form>
</body>
</html>