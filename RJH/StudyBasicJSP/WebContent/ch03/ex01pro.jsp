<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int num = Integer.parseInt(request.getParameter("num"));

	if(num>10){
		out.println("10보다 크다");
	}else{
		out.println("10보다 작다");
	}
%>

<!-- 
<%-- 위에것을 이렇게 표현할수도 있다.
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String result ="";
	if(num>10){
		result = "10보다 크다";
	}else{
		result ="10보다 같거나 작다";
	}
	
	%>
	입력값에 대한 결과: <%=result%>
--%>
-->