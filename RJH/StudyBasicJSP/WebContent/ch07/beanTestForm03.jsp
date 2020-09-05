<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanTestForm03</title>
</head>
<body>
<form action="beanTestPro03.jsp" method = "post">
 아이디 : <input type="text" name="id"><br>	<!-- bean에 있는 자바 변수 id와 같은 이름으로 해주자 -->
 나이 : <input type="text" name="age"><br>	<!-- bean에 있는 자바 변수 age와 같은 이름으로 해주자 -->
 이름 : <input type="text" name="name"><br> 	<!-- bean에 있는 자바 변수 name와 같은 이름으로 해주자 -->
 	<input type="submit" value ="입력완료">
</form>

</body>
</html>