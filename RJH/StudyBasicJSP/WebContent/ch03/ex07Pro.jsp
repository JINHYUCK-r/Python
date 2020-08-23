<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for결과문</title>
</head>
<body>
<%
		int num = Integer.parseInt(request.getParameter("number"));
		int count = Integer.parseInt(request.getParameter("count"));
		int sum=1;
	
		for(int i=count; count>0; count-- ){
			sum*=num;
		}
	%>
	
	<%=sum %>

</body>
</html>