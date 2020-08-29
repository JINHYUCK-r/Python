<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>includeTest02/ 폼태그 사용X</title>
</head>
<body>
	<%
		String name = "홍길동";
		String pageName = "includedTest2.jsp";
	%>
	포함하는 페이지 includeTest2.jsp입니다.<br>
	포함되는 페이지에 파라미터값을 전달합니다.<br>
	<hr>
	<!-- 
		include 액션 태그에서 포함되는 페이지에 값 전달하기
		<%-- <jsp:include page ="포함되는 페이지" flush ="false">
				<jsp:param name="name" value="val1"/>
				<jsp:param name="pageName" value="val2"/>
			</jsp:include>
		--%>
		value 속성의 값으로 표현식을 사용할수 있다,
	 -->
	 <!-- 폼태그를 사용하지않고 값을 전송할수 있다. -->
	 <jsp:include page ="<%=pageName%>" flush ="false">
				<jsp:param name="name" value="<%=name %>"/>
				<jsp:param name="pageName" value="<%=pageName %>"/>
			</jsp:include>
			includeTest2.jsp 나머지 내용입니다.
</body>
</html>