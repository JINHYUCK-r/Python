<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="ex06_to.jsp">
	이름 <input type="text" name="name"><br>
	색선택 <select name = "color">
		<option value="green">초록</option>
		<option value="blue">파랑</option>
		<option value ="red">빨강</option>
	</select><br>
	<input type="submit" value="제출">
</form>
</body>
</html>