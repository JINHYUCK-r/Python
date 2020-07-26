<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fieldset</title>
</head>
<body>
	<h2> form 요소와 관련된 데이터 들을 하나로 묶어주는 fieldset</h2>
	<form action="http://www.naver.com">
	<fieldset>
		<legend>개인정보</legend><!--  legend는 필드셋 안에서만 사용가능 . 제목을 나타냄 -->
		<label for="name"> 이름 : </label><br>
		<input type = "text" name = "username"> <br>
		<label for = "email">이메일 : </label><br>
		<input type ="text" name = "email"> <br><br>
	</fieldset>
	
	<fieldset>
		<legend>로그인 정보</legend> <!--  legend는 필드셋 안에서만 사용가능 . 제목을 나타냄 -->
		아이디 : <br>
			<input type="text" name = "username"><br>
		비밀번호 : <br>
			<input type ="text" name = "username"><br><br>
	</fieldset>
	
	</form>
</body>
</html>