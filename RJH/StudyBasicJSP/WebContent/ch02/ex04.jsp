<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	아이디와 비밀번호 나이를 지역변수로 선언하고
	아이디값을 test로
	비밀번호의 값을 testpass로
	나이를 20으로 입력한뒤 표현식을 사용하여 각각출력
 -->
	<%
		String id = "test";
		String password = "testpass";
		int age = 20;
	%>
	회원정보<hr>
	아이디: <%=id%><br> 
	비밀번호: <%=password%><br>
	나이: <%=age%>
</body>
</html>