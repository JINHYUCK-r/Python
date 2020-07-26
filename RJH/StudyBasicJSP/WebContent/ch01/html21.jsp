<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>progress 태그</title>
</head>
<body>
	<h2>progress 태그</h2>
	<label>10초 남음</label>
	<!-- 움직이는 효과를 주려면 자바스크립트로 제이쿼리 등을 활용해야함 -->
	<!-- 전체 60초중에 50초 진행 -->
	<progress value ="50" max="60"></progress>
	
	<label>진행률 30%</label>
	<!-- 전체 100중 30만큼 진행 -->
	<progress value ="30" max="100"></progress>
</body>
</html>