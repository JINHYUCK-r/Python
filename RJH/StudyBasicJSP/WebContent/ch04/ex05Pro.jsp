<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String studentId = request.getParameter("studentId");
	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String[] hobby = request.getParameterValues("hobby");

%>
	학번: <%=studentId %>
	이름: <%=name %>
	전공: <%=subject %>
	
	<%
		if(hobby != null){
			for(String str : hobby){
				out.println(str + " ");
			}
		}else
			out.print("없음");
	
	%>
	

</body>
</html>