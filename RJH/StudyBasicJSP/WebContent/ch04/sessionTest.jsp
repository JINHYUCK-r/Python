<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인처리폼</title>
</head>
<body>
<%	out.println("d");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	if(id.equals("kingdora") && pass.equals("1234"))
		session.setAttribute("id", id); //변수 id의 값은 "id"에 넣는다
		
	response.sendRedirect("sessionTestform.jsp");	
%>

</body>
</html>