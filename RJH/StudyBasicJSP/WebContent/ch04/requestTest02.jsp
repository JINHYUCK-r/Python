<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>   
<!DOCTYPE html>
<%
	String names[] = {"프로토콜이름","서버이름","Method방식","컨텍스트 경로","URI","접속한 클라이언트의 IP"};
	String values[] = {
			request.getProtocol(),//웹서버로 요청시, 사용중인 프로토콜을 리턴한다
			request.getServerName(), //웹서버로 요청시, 서버의 도메인 이름을 리턴한다.
			request.getMethod(),	//웹서버로 요청시, 요청에 사용된 요청방식 (GET, POST 등)을 리턴한다.
			request.getContextPath(),//해당 jsp페이지가 속한 웹 애플리케이션의 컨택스트 경로를 리턴
			request.getRequestURI(),//웹서버로 요청시, 요청에 사용된 URL로 부터 URI의값을 리턴한다.
			request.getRemoteAddr()	};//웹서버로 정보를 요청한 웹 브라우저의 호스트 이름을 리턴
			/* 
			URL과 URI
				URL(Uniform Resource Locator)은 웹상에서 서비스를 제공하는 각 서버들이 제공하고 있는 파일들의 위치를 명시하기 
				따라서 URL에는 접속해야 할 서비스의 종류, 도메인명, 파일의 위치가 포함된다.
				URI(Uniform Resource Identifier)는 URL로 부터 존재하는 자원을 식별하기 위한 일반적인 식별자를 규정하기 위한
				예를 들어 URL이 http://127.0.0.1:8080/study/ch04/resourceTest01.jsp라면
				URI는 /study/ch04/resourceTest01.jsp가 된다.
			*/
	Enumeration<String> en = request.getHeaderNames(); //요청헤더의 모든 정보를 얻어낸다.
	/*
	Enumeration 객체
	java.util.Enumeration 인터페이스는 객체를 저장하는 객체(컬렉션)로, 저장된 객체들을 모두 Object 타입으로 저장한다.
	주로 사용하는 메서드
	boolean hasMoreElecmets(): 더 이상의 객체가 있는지 없는 지를 판단하여 객체가 있으면 true, 없으면 false값을 리턴
	Object nextElement(): 다음 객체를 가져오는 메서드로 , 이때 Object 타입으로 받아온 객체를 원래의 객체 형태로 형 변환(casting)하여 사용한다.
	*/
	String headerName = "";
	String headerValue = "";
%> 


<html>
<head>
<meta charset="UTF-8">
<title>request 내장객체 예제</title>
</head>
<body>
	<h2>웹 브라우저와 웹 서버 정보 표시</h2>
	<%
		for(int i=0; i<names.length; i++){
			out.println(names[i]+" : " + values[i]+"<br>");
		}
	%>
	<h2>헤더의 정보표시</h2>
	<%
		while(en.hasMoreElements()){
			headerName = en.nextElement();
			headerValue = request.getHeader(headerName); //해당 헤더 정보에 해당하는 값을 얻어낸다.
			out.println(headerName +" : "+headerValue + "<br>");
		}
	
	%>
	
	
	
</body>
</html>