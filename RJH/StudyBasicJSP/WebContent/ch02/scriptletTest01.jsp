<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문과 스크립트릿 변수 선언</title>
</head>
<body>
	<h2>선언문과 스크립트릿에서 선언된 변수의 차이점 확인</h2>
	<%!
		String str1 = "선언문에서 선언한 변수"; //멤버 or 전역변수
	%><!-- jsp 선언문 -->
	
	<%
		String str2 = "스크립트릿에서 선언한 변수"; //지역변수
		out.println(str2);
	%><!-- jsp 스크립트릿 -->
	<h3>전역변수 : <%=str1%></h3> <!-- jsp 표현식(출력문) -->
	<h3>지역변수 : <%=str2%></h3>
</body>
</html>