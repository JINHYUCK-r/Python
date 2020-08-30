<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
<!-- 1.메인에서 ex03_content.jsp 주소를 ex03_temple.jsp로 넘긴다. 
	2.ex03_temple.jsp에 테이블을 만들어서 각 칸에 지정된 jsp파일을 include 한다
-->

<!-- ex03_temple에 변수 contentpage에  content.jsp를 값으로 지정해서 보낸다 -->	
	<jsp:forward page="ex03_temple.jsp">
		<jsp:param value="ex03_content.jsp" name="contentPage"/>
	</jsp:forward>

</body>
</html>