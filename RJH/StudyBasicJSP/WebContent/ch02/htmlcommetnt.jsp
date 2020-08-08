<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>html주석, jsp주석 예제</title>
</head>
<body>
<h2>html 주석 예제</h2>
<%
	String str = "소스보기를 하면 화면에 표시됩니다.";
%>
<!-- html주석 -->
<!-- <%=str%> -->
<!-- 
	13번 라인의 html주석은 웹 브라우저에서는 표시되지않으나 소스보기를 하면 주석의 내용을 확인할수있다.
	14번 라인의 html주석내에 표현식이 들어있지만 표현식이 실행되어 소스보기를 하면 주석문이 "소스보기를 하면 화면에 표시됩니다"로 바뀌어 있는것을 확인할수있다
 -->
 <%--jsp주석 --%>
 <%--<%=str%> --%>
 <!-- 얘는 소스보기를 해도 나오지 않는다. -->
</body>
</html>