<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키사용 로그인 폼</title>
</head>
<body>
	<form method="post" action="cookieLoginPro.jsp">
	아이디: <input type="text" name="id" maxlength="50" required><br>
	패스워드: <input type="password" name="passwd" maxlength="16" required><br>
		<input type="submit" value="로그인">
		<input type="button" value="회원가입"
			onclick="location.href='insertMemberForm.jsp'"> <!-- onclick = 자바스크립트 코드 -->
	
	</form>
	

</body>
</html>