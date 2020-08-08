<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include디렉티브 연습</title>
</head>
<body>
	<h2>include디렉티브 연습</h2>
	<!--  공통적으로 포함될 내용을 가진 파일을 해당jsp 페이지 내에 삽입하는 기능을 제공하는 것이 include 디렉티브이다. 
		  포함시킬 파일영을 file 속성의 값으로 기술한다.
		 <%--%@ include file = "포함될 파일의 url"%>--%>
	-->
	<%
		String name = "kim";
	%>
	
	<%@ include file = "top.jsp"%>
	포함하는 페이지 includeDirective.jsp의 내용입니다.
	<%@ include file = "bottom.jsp" %>	
	
	<!-- 복사&붙여넣기 방식으로 두개의 파일이 하나의 파일로 합쳐진 후 하나의 파일로서 변환되고 컴파일 된다. -->

</body>
</html>