<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 메인</title>
</head>
<body>
<h2>세션을 사용한 간단한 회원인증</h2>

<%
	String id ="";
	try{
		id=(String)session.getAttribute("id");
		if(id == null || id.equals(""))
			response.sendRedirect("sessionLoginForm.jsp");
		else{
%>
	<%=id %>님이 로그인 하였습니다.
	<form method="post" action="sessionLogout.jsp">
		<input type="submit" value="로그아웃">
	</form>	
	
<%	} 
	}catch(Exception e){
		e.printStackTrace();
	}
%>





</body>
</html>