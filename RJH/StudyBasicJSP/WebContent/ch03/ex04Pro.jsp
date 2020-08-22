<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>while문 반복테이블</title>
</head>
<body>
	<%
		String number = request.getParameter("number");
		int num = Integer.parseInt(number);
	%>

	<table border="1">
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>글내용</th>
			<%
				while (num > 0) {
			%>
		
		<tr>
			<td><%=num%></td>
			<td>제목<%=num%></td>
			<td><%="내용" + (num)%></td>
		</tr>

		<%
			num--;
			}
		%>

	</table>

</body>
</html>