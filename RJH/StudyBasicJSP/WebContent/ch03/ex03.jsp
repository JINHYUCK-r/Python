<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공/실패</title>
</head>
<body>
	<!-- 아이디가 "abcd"이고 패스워드가 "z1234"이면, "로그인에 성공하셨습니다." 표시하고 그렇지않으면 "로그인에 실패하셨습니다."를 표시 -->
	<h2>아이디와 패스워드를 입력하세요</h2>


	<form method="post" action="ex03Pro.jsp">
		<input type="text" name="id"> <input type="password" name="password"><br>
			 <input type="submit" value="입력완료">
	</form>
</body>
</html>