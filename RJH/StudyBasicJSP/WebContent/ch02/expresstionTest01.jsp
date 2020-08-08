<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식 예제 - 배열의 특정요소의 내용을 출력</title>
</head>
<body>
	<!-- 표현식은 jsp페이지에서 웹 브라우저에 출력할부븐을 표현하기 위한 것이다. 즉, 화면에 출력하기 위한것이다.
		그러나 스크립트릿 안에 표현식을 쓸수없다. 또한 html태크도 스크립트릿 안에 쓸수없다.
		대신 스크립트릿 내에서 출력할 부분은 내장 객체인 out객체인 print() 또는 println() 메소드를 사용하여 출력
	-->
	<%
	//배열의 초기화 블럭을 사용하면 배열의 선언, 메모리할당, 초기값 설정을 한번에 할수 있다.
	String[] str = {"JSP","JAVA","Android","HTML5"};
	int i = (int)(Math.random()*4);	//0~3사이의 값이 임의로 설정
	%>
	
	<%=str[i] %> 가(이) 재미있다.
</body>
</html>