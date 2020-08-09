<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex00</title>
</head>
<body>
<%
	int val1 = 3;
	if(val1>5){
		out.println("변수 val1의 값은 5보다 크다");
	}else{
	}out.println("변수 val1의 값은 5보다 작다");
%>
<!-- 
<%-- 위에것을 이렇게 표현할수도 있다.
<%
	int val1 = 5;
	if(val1>5){ %>
		변수 val1의 값은 5보다 크다.
<%	} else { %>
		변수 val1의 값은 5보다 작다.
<% } %>
--%>
-->
</body>
</html>