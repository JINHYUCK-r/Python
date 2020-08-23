<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- response 객체는 웹브라우저로 응답할 정보를 가지고 있다.
	response 객체는 응답 정보와 관련하여 주로 헤더 정보 입력, 리다이렉트 하기 등의 기능을 제공한다.
	response 객체에서 자주 사용되는 헤더 정보 입력과 리다이렉트에 관련된 메소드들을 표시한 것
	void setHeader(name, value) : 헤더 정보의 값을 수정하는 메서드로, name에 해당하는 헤더정도를 value값으로 설정
	void setContent(type) : 웹 브라우저 요청의 결과로 보일 페이지의 contentType을 설정한다.
	void sendRedirect(url) : 페이지를 이동시키는 메소드로, url로 주어진 페이지로 제어가 이동한다.
 -->
 <h2>Response내장객체 - 리다이렉트예제</h2>
<!-- 이 예제는 responseRedirect.jsp페이지를 웹 브라우저에 요청하면, sendRedirect()메소드에 의해
	 responseRedirected.jsp 페이지가 응답되어 화면에 표시되는 예제이다. 즉 웹 브라우저를 통해 요청은  responseRedirect.jsp 가 받고, 응답은  responseRedirected.jsp페이지가 한다.
	 -->
	현재 페이지는 <b> responseRedirect.jsp</b>입니다.
	<%
	response.sendRedirect(" responseRedirected.jsp");
	/*
	 responseRedirected.jsp페이지로 제어를 이동시킨다.
	이때 출력 버퍼에 저장되는 출력내용(17,23)은 출력 버퍼에서 비워지고 제어가 이동된  responseRedirected.jsp 페이지의 내용만 출력 버퍼에 저장되어 실행한 후 화면에 표시된다.
	*/
	%>
	<!-- 응답 결과를 보면  responseRedirect.jsp 가 표시되는 것이 아니라,  responseRedirected.jsp 페이지가 실행되어 화면에 표시된 것을 알수 있다. -->
</body>
</html>