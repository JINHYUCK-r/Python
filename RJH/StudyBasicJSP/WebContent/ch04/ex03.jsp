<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>콘솔에 결과가 나오도록 로그를 기록하는 jsp파일을 작성하시오</h2>
	<%
	String fileName = request.getRequestURI();
	application.log("MY Log : " + fileName + "에서 작성");
	%>
	<!-- MY Log : /ch04/ex03.jsp에서 작성   이 프린트 됨 -->
</body>
</html>