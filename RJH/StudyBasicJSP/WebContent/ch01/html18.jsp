<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크기</title>
</head>
<body>
	<h2>maxlength 속성</h2>
	<!--  입력 필드에 입력할수 있는 문자의 최대 길이 (length)를 설정 -->
	<form>
		이름 : <br><input type ="text" name="name" value="홍길동" maxlength="10"><br>
		학번 : <br><input type ="text" name="id"><br>
	</form>
	<hr>
	
	<h2>size 속성</h2>
	<!-- maxlength 속성과는 달리 입력 필드가 한번에 보여줄수 있는 문자의 최대 개수만을 의미한다. -->
	<form>
		이름 : <br><input type ="text" name = "student_name" value ="홍길동입니다." size ="5"><br>
		학번 : <br><input type = "text" name = "studen_id"><br>
	</form>
</body>
</html>