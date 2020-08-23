<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학번, 이름, 학년, 선택과목을 출력 폼</title>
</head>
<body>
	<h2>학생정보</h2>
	<%
		String studentID = request.getParameter("studentID");
		String name = request.getParameter("name");
		String grade = request.getParameter("grade");
		String choice = request.getParameter("choice");
	%>
	<table border="1">
		<tr>
			<td>학번</td>
			<td><%=studentID%></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td>학년</td>
			<td><%=grade%></td>
		</tr>
		<tr>
			<td>선택과목</td>
			<td><%=choice%></td>
		</tr>

	</table>



</body>
</html>