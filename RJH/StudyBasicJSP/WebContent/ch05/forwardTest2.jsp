<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardTest2/폼태그 사용X</title>
</head>
<body>
<%
	String id = "kingdora";
	String hobby = "만화보기";
%>
	<!-- 
		forward 액션 태그에서 포함되는 페이지에 값 전달하기
		<%-- <jsp:forward page ="포함되는 페이지">
				<jsp:param name="name" value="val1"/>
				<jsp:param name="pageName" value="val2"/>
			</jsp:forward>
		--%>
		
	 -->
	포워딩하는 페이지 forwardTest2.jsp입니다.<br>
	<!-- 다음 예제는 form  태그를 사용하지 않고 값을 넘길수 있다.ㅍ -->
	<jsp:forward page ="forwardToTest2.jsp">
				<jsp:param name="name" value="<%=id %>"/>
				<jsp:param name="pageName" value="<%=hobby %>"/>
	</jsp:forward>
</body>
</html>