<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과값</title>
</head>
<body>
	<%
		int num = Integer.parseInt(request.getParameter("number"));
		int count = Integer.parseInt(request.getParameter("count"));
		int sum=1;
	
		while(count>0){
			sum*=num;
			count--;
		}
	%>
	<%=sum %>
</body>
</html>