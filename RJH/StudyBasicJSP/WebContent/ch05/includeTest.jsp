<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 액션태그</title>
</head>
<body>
	<%
		String pageName = request.getParameter("pageName");
		pageName += ".jsp";
	%>
	포함하는 페이지 includeTest.jps입니다.<br>
	<hr>
	<!-- include 액션태그 사용법 
	<%--<jsp:include pate ="포함될 페이지" flush ="false"/> --%>
	flush속성은 포함될 페이지로 제어가 이동될때 현재 또는 포함하는 페이지가 지금까지 출력 버퍼에 저장한 결과를 처리하는 방법을 결정하는것
	flush속성을 true로 지정하면 포함될 페이지로 제어가 이동할대 , 현재 페이지가 지금까지 버퍼에 저장한 내용을 웹 브라우저에 출력하고 버퍼를 비운다.
	그러나 include 액션태그에서 flush 속성의 값을  false로 지정하는것이 좋다.
	만일 flush속얼을 true로 지정하면 일단 출력 버퍼의 내용을 웹브라우저에 전송하게 되는데 이때 헤더 정보도 같이 전송됞다. 헤더 정보가 일단 웹 블아ㅜ저에 전송이 되고 나면 헤더 정보를 추가해도 결과가 반영되지 않기 때문이다 그래서 flase로 지정하는 것이 좋다.
		
	
	-->
	
<jsp:include page="<%=pageName%>" flush="false"></jsp:include> <!-- includedTest.jsp페이지의 실행결과를 포함시킨다. -->
includeTest.jsp의 나머지 내용입니다.

<!-- 액션태그 종류 밍 설명 
	  액션태그명:		     액션태그			: 설명
	include : <%-- <jsp:include> --%> : 다른 페이지의 실행 결과를 현재의 페이지에 포함실킬때 사용
	forward : <%-- <jsp:forward> --%> : 페이지 사이의 제어를 이동시킬때 사용
	usebean : <%-- <jsp:usebean> --%> : 자바빈은 jsp페이지에서 사용할때 사용
	setProperty : <%-- <jsp:setProperty> --%> : 프로퍼티값을 세팅할때 사용
	getProperty : <%-- <jsp:getProperty> --%> : 프로퍼티값을 얻어낼때 사용
-->

</body>
</html>