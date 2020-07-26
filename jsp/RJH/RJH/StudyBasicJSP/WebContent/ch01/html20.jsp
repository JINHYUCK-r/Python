<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>thead, tbody, tfoot 태그</title>
</head>
<body>
	<h2>thead, tbody, tfoot 태그 - 표 구조 정의하기</h2>
	<!-- 위 3가지 태그는 table의 t와 제목부분(head),본문(body),요약부분(foot)가 합쳐진 말 -->
	<!-- 기본 형태
		<thead>
			<tr>...<tr>
		</thead>
		<tbody>
			<tr></tr>
		</tbody>
		<tfoot>
			<tr></tr>
		</tfoot>		
	 -->
	 
	 <table border ="1">
	 <caption>제주특별자치도 학교현황(2015.4.1기준)</caption>
	 <thead> <!-- 표의 제목 -->
	 	<tr>
	 		<th>구분</th>
	 		<th>학교수</th>
	 		<th>학급수</th>
	 		<th>학생수</th>
	 		<th>교원수</th>
	 	</tr>	
	 </thead>
	 <tbody><!-- 표의 본문 -->
	 	<tr>
	 		<th>유치원</th>
	 		<td>177</td>
	 		<td>252</td>
	 		<td>5,547</td>
	 		<td>474</td>
	 	</tr>
	 	<tr>
	 		<th>초등학교</th>
	 		<td>117</td>
	 		<td>252</td>
	 		<td>5,547</td>
	 		<td>474</td>
	 	</tr>
	 	<tr>
	 		<th>고등학교</th>
	 		<td>117</td>
	 		<td>252</td>
	 		<td>5,5547</td>	
	 		<td>474</td>
	 	</tr>
	 	<tr>
	 		<th>특수학교</th>
	 		<td>117</td>
	 		<td>252</td>
	 		<td>5,547</td>
	 		<td>474</td>
	 	</tr>
	<tfoot><!-- 표의 요약부분 -->
		<tr>
			<th>합계</th>
			<th>304</th>
			<th>3,437</th>
			<th>86,954</th>
			<th>6,111</th>
		</tr>
	</tfoot>			
	</tbody>
	 </table>
</body>
</html>