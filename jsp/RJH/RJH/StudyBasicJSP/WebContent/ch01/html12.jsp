<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<h2>게시판 만들기</h2>
	<table style="width:100%">
		<caption>caption 태그는 테이블 상단에 짧은 내용을 출력</caption>
		<tr style="background-color:lightgrey">
			<th style="width:10%">글번호</th>	<!-- td대신 th를 사용해서 글의 제목을 강조하였다. -->
			<th style="width:20%">작성자</th>		
			<th>글제목</th>
		</tr>
		<tr>
			<td>1</td>
			<td>홍길동</td>		
			<td>1등..</td>
		</tr>
		<tr>
			<td>2</td>
			<td>고길동</td>		
			<td>2등..</td>
		</tr>
	</table>
</body>
</html>