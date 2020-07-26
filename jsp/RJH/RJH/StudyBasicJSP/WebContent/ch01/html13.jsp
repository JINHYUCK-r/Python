<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
		<h2>form 사용하기(일반 입력창)</h2>
<!--  	<form action="처리할페이지주소" method="get|post"></form>	-->
		<form action="/examples/media/request.php"> <!-- method가 생략되었을 경우 디폴트는 get방식 -->
    		<label>이름을 입력하세요 : </label>
    		<input type="text" name="search"> <!-- type의 속성이 text 인경우 텍스트를 입력받는 입력창이 생긴다.-->
    	</form>
    	<hr>
    	
    	<h2>form 사용하기(비밀번호 입력창)</h2>
    	<form>
    		ID : <br><input type="text" name="id"><br>
    		비밀번호 : <br><input type="password" name="password">
		</form>
    	<hr>
    	
</body>
</html>