<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<form method="post" action="insertPro.jsp">
	<table border="1">
		<tr>
			<td>id</td><td><input type="text" name="id" required></td>
		</tr>
		<tr>
			<td>passwd</td><td><input type="password" name="passwd" required></td>
		</tr>
		<tr>
			<td>name</td><td><input type="text" name="name" required></td>	
		</tr>
		<tr>
			<td>address</td><td><input type="text" name="address" required></td>	
		</tr>
		<tr>
			<td>tel</td><td><input type="text" name="tel" required></td>	
		</tr>
		<tr>
			<td>info</td><td><input type="text" name="info" required></td>	
		</tr>
		<tr>
			<td>lat</td><td><input type="text" name="lat" required></td>	
		</tr>
		<tr>
			<td>lang</td><td><input type="text" name="lang" required></td>	
		</tr>
		<tr>
			<td><input type="submit" value="입력완료"></td>
			<td><input type="reset" value="다시작성"></td>
		</tr>
	</table>
	</form>
</body>
</html>