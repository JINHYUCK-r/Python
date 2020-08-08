<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info = "copyright by ryu" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 디렉티브연습 - info속성</title>
</head>
<body>
	<h2>page 디렉티브연습 - info속성</h2>
	<%=getServletInfo() %> <!-- page디렉티브의 info 속성의 값을 화면에 출력하라는 의미 -->
	<h2>language 속성</h2>
	이 속성은 생략해도 되며, 생략시 기본값으로 java가 지정된다. 현재 시점에서도 스크립트 언어로서 java만 지원한다.
	<h2>contentType 속성</h2>
	기본값은 text/html 이다. text/html은 응답 결과를 html문서 형식으로 생성하여 출력하겠다는 의미이다
	contestType 속성에는 응답결과를 보여줄때 사용할 문자의인코딩을 지정하룻있는데 이때 charset이라는 것을 사용한다.
	모바일에서의 표준이 utf-8이므로, 여기서도 웹 브라우저에 표시되는 한글이 깾지않게 하려면 "charser=utf-8"로 설정하는 것이 좋다.
	
	
	
	
	
</body>
</html>