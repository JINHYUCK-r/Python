<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배열을 이용한 표 만들기</title>
</head>
<body>
	<!-- jsp,java,android,html5요소로 가지는 4개짜리  String 배열 -->
	<%
		String strArray[] = { "JAVA", "JSP", "Android", "HTML5" };
	%>
	<table border="1">
		<tr>
			<td>배열의 첨자번호</td>
			<td>배열 요소요소의 값</td>
		</tr>
		<%
			for (int i = 0; i < strArray.length; i++) {
		%>
		<tr>		<!-- 반복문을 한번돌때마다 행 하나씩 추가됨 -->
			<td><%=i%></td>
			<td><%=strArray[i]%></td>
		</tr>
		<%
			}
		%>

	</table>
</body>
</html>