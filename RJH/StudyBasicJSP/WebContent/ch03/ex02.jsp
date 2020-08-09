<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배열을 이용한 표만들기</title>
</head>
<body>
	<!-- jsp,java,android,html5요소로 가지는 4개짜리  String 배열 -->
	<%
		String strArray[] = {"JAVA","JSP","Android","HTML5"};
	%>
	<table border="1">
		<tr>
		<td>i의 값</td>
		<td>배열 요소</td>
		</tr>
		<%
		for(int i=0; i<strArray.length; i++){%>
			<tr>
			<td><%=i %></td>
			<td><%=strArray[i]%></td>
			</tr>
		<%}%>
	 	
	</table>
</body>
</html>