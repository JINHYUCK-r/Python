<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EX03</title>
</head>
<body>
	<!-- 
	선언문에서 String타입의 변수 name를 선언하고 name변수의 값으로 본인의 이름을 입력
	선언문에서 getName() 메소드를 선언하고, name 변수의 값을 return하는 메소드로 작성
	스크립트릿에서 hobby변수를 선언하고, 이 변수에 본인의 취미를 입력
	표현식을 사용하여 getName() 메소드와 hobby변수를 각각출력
 -->
	<%!String name = "홍길동";

	String getName() {
		return name;
	}%>
	<%
		String hobby = "축구";
	%>
	이름은
	<%=getName()%>이고,
	<br> 취미는
	<%=hobby%>이다.
</body>
</html>