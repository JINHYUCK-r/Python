<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>값을 입력하는 폼</title>
</head>
<body>
	<h2>숫자 값을 입력하세요</h2>
	<!-- 이 텍스트필드에 입력한 값은 number 변수의 값으로 설정된다.
		즉 name="number" 변수를 사용하겠다고 선언하는것과 같다 -->
		
	<form method="post" action="ifTestPro.jsp">
		<input type ="text" name="number">
		<input type = "submit" value="입력완료">
	</form>		
</body>
</html>