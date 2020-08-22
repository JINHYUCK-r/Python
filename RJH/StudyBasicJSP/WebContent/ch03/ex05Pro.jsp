<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선택한 이미지 보여주기</title>
</head>
<body>
<h2>좋아하는 색 선택</h2>
	<%
		String name = request.getParameter("name");
		String color = request.getParameter("color");
	%>

	<%=name + "님이선택한 색은 " + color + "입니다."%><br><br>
	<%="선택한 색: " %><br>
	<%
		if (color.equals("빨강")) {
	%>
	<img src="..\img\red.jpg">
	<!-- 이미지 상대경로, 보안에 좀더 낫다. 이미지를 왼쪽에 폴더를 만들어서 집어넣고 주소넣어 활용 -->
	<%
		} else if (color.equals("노랑")) {
	%>
	<img
		src="C:\Users\Administrator\Desktop\RJH\StudyBasicJS\WebContent\image\img\yellow.jpg">
	<!-- 이미지 절대경로 -->

	<%
		} else if (color.equals("파랑")) {
	%>
	<img
		src="..\img\blue.jpg">

	<%
		} else {
	%>
	<img
		src="C:\Users\Administrator\Desktop\RJH\StudyBasicJS\WebContent\image\img\green.jpg">

	<%
		}
	%>

<!-- <img src = "<%--<%="../img/"+color+"."jpg%>--%>"  border ="0" 이런식으로 주소를 한줄로 간단하게 표현할수도 있다.-->

</body>
</html>