<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문 메소드 선언</title>
</head>
<body>
<h2>선언문 메소드 선언 - 선언문에서만 메소드를 만들수 있다.</h2>
	<%!							
		String name ="korea";
		String getName(){
			return name;
		}
		
	%> 
	name변수: <%=name %><br> 
	getName() 메소드의 실행결과: <%=getName() %>
</body>
</html>