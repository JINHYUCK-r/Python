<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardTest</title>
</head>
<body>	
	포워딩하는 페이지 forwardTest.jsp로 절대 표시되지않습니다.
	<!--
		27번 라인의 forward 액션태그를 만나면서 
		11번라인의 내용은 출력 버퍼에서 사라져 표시되지않는다.
		또한 27번 라인에서 프로그램의 제어가 forwardToTest로 이동했기때문에 
		28번 라인 또한 출력하지 않는다,.
	
	 -->
	<!-- 
		forward 액션 태그의 기본적인 사용법
		
		<%-- <jsp:forward page="이동할페이지명"/> --%>
		<%-- <jsp:forward page="이동할페이지명"></jps:forward> --%>
		<%-- <jsp:forward page="<%=expression + ".jsp"%>"/> --%>
	 -->

		<jsp:forward page ="forwardToTest.jsp"/>
		forwardTest.jsp페이지의 나머지 부분으로 표시도 실행도 되지 않습니다.
</body>
</html>