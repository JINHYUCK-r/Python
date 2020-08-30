<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04_to</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String hobby = request.getParameter("hobby");

%>
	<b><%=name %></b>님의 취미는 <b><%=hobby %></b> 입니다.

</body>
</html>

<!-- 
<%-- 
	String id = (String)request.getAttribute("id");	getAttribute는 오브젝트 형태이기 때문에 String으로 변환해 주어야함
	STring name = (String)request.getAttribute("name");
	--%>
내장객체를 사용해서 이렇게 받을수도 있다,
 -->