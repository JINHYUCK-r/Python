<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>입력결과 입력받기</h2>
	<form method="post" action="ex02Pro.jsp">
	이름 <input type="text" name="name" placeholder ="이름"> <br>
	내용 <input type="text" name="text" placeholder ="내용"> <br>
	취미<input type="checkbox" name="hobby" value="잠자기"/>잠자기
		<input type="checkbox" name="hobby" value="게임"/>게임
		<input type="checkbox" name="hobby" value="수영"/>수영 <br>
	<input type="submit" value="등록">
	<input type="reset" value="다시쓰기">
		
</form>
</body>
</html>