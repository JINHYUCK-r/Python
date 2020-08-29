<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록정보</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String text = request.getParameter("text");
	String[] hobby = request.getParameterValues("hobby");	//여러개 입력값 출력하기

%>
	이름 : <%=name %> <br>
	내용 : <%=text %><br>
	취미 : 
	<%
		if(hobby != null){
			for(String str : hobby){
				out.print(str + " ");
			}
		}else
			out.print("없음");
			
		
	%>
	
</body>
</html>