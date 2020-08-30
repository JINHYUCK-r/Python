<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03_temp.jsp</title>
</head>
<body>
<%
	String contentPage = request.getParameter("contentPage");
%>
<table border ="1">

	<tr>
	<td colspan ="2">
	<jsp:include page="ex03_top.jsp" flush="false"></jsp:include>
	</td>
	
	</tr>
	
	<tr>
	<td width ="150" valign="top">
	<jsp:include page="ex03_left.jsp" flush="false"></jsp:include>
	</td>
	<td width="150" valign="top">
	<jsp:include page="<%=contentPage %>" flush="false"></jsp:include> <!-- 페이지의 내용을 유동적으로 바꾸기 위해 -->
	</td>
	</tr>
	
	<tr>
	<td colspan ="2">
	<jsp:include page="ex03_bottom.jsp" flush="false"></jsp:include>
	</td>
	</tr>
	
</table>
</body>
</html>