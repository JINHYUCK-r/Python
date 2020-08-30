<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date, java.text.SimpleDateFormat" %>

<%@ page errorPage = "error.jsp" %>
<!-- errorPage 속성의 값으로 "error.jsp" 페이지를 설정하였다.
	에러가 발생하면 error.jsp페이지 에서 처리하도록 했다.
	그러나 JSP2.0 부터는 errorPage속성은 그 기능을 발휘하지 못해서 에러를 처리하지 못한다.

 -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Date date = new Date();
	SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
	String strdate = simpleDate.format(date);
%>
	보통의 JSP 페이지의 형태입니다.<br>
	<%--고의로 에러를 발생시킨 라인으로  strdate변수를 strdat로 틀리게 입력했다. --%>
	오늘 날짜는 <%=strdat %> 입니다.
	<!-- error 폴더에서 만든 500code 파일이 실행되어 오류를 보여준다. -->
	<!-- 결과를 보면 error 페이지에서 error를 처리하지 못하고 있다. -->
</body>
</html>