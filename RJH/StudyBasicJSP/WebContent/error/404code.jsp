<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setStatus(HttpServletResponse.SC_OK);%>


<!-- 현재 페이지가 정상적으로 등답되는 페이지 임을 지정하는 코드이다. 
이 코드가 생략되면 웹 브라우저는 자체적으로 제공하는 화면을 표시한다.-->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404에러 페이지</title>
</head>
<body>
	요청하신 페이지는 존재하지 않습니다.
	<img src = "http://localhost:8080/error/notfound.jpg">
	<!-- 에러페이지 이미지를 표시할때는 절대경로를 이용한다. -->
</body>
</html>