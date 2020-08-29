<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>정보를 입력하세요</h2>
	<form method = "post" action="ex05Pro.jsp">
	학번 : <input type="text" name="studentId"> <br>
	이름 : <input type="text" name="name">	<br>
	전공 : <select name ="subject">
		<option value ="컴공">컴공</option>
		<option value ="화공">화공</option>
		<option value ="전공">전공</option>
	</select><br>
	취미 : <input type="checkbox" name = "hobby" value="잠자기"/>잠자기
	<input type="checkbox" name = "hobby" value="누워있기"/>누워있기
	<input type="checkbox" name = "hobby" value="게임"/>게임 <br>
	<input type="submit" value="제출">
	</form>
	
</body>
</html>