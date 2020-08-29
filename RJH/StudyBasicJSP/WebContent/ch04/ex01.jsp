<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01</title>
</head>
<body>
<h2>정보를 입력하세요</h2>
	<form method="post" action="ex01Pro.jsp">
	학번 : <input type="text" name="studentId"> <br>
	이름 : <input type="text" name="name">	<br>
	전공 : <select name ="subject">
		<option value ="전자공학"> 전자공학 </option>
		<option value ="전기"> 전기 </option>
		<option value ="화학"> 화학 </option>
	</select><br>
	<input type="submit" value="입력완료">
	</form>

</body>
</html>