<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<form action="html19.jsp" method ="get">
	<fieldset><!-- required 옵션을 넣으면 입력창에 아무것도 입력을 하지않으면 메세지를 루력 -->
		<legend>로그인 정보</legend> <!-- placeholder 는 초기입력값이며 내용을 입력하면 사라진다. -->
		<label for="id">아이디: </label>
		<input type ="text" name="id" placeholder="이름을 입력하세요" required>
		<label for ="pass">비밀번호: </label>
		<input type ="text" name="password" placeholder="비밀번호를 입력" required><br>
	</fieldset>
	<input type ="submit" value ="로그인">
	<input type ="reset" value ="다시쓰기">
	</form>
</body>
</html>