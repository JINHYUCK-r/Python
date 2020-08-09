<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력받은 숫자 비교</title>
</head>
<body>
	<h2>입력받은 숫자가 10보다 작거나 같은지 비교</h2>
	<%
		String strNumber = request.getParameter("number");
		int number = Integer.parseInt(strNumber);
		
		if(number <=10){
	%>
		입력받은 숫자는  <%=number %>입니다.		<!-- 글자는 html문법이기 때문에 jsp바깥에다가 적어주고 -->
	<%} %>									<!-- if 문의 닫는 괄호( '}' )를 다시 jsp문법으로 적어줌  -->



</body>
</html>