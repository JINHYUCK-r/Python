<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<h2>라디오 버튼 만들기(여러개 중에 하나만 선택 가능)</h2>
	<form>
	    <input type="radio" name="singer" value="bTS" checked> BTS <br>
	    <input type="radio" name="singer" value="exo"> EXO <br>
	    <input type="radio" name="singer" value="got7"> GOT7 <br>	
	    <input type="radio" name="singer" value="blackpink"> BLACKPINK
	</form>
	<hr>
	
	<h2>체크박스 만들기(다중 선택이 가능)</h2>
	<form>	<!-- disable 속성을 주게 되면 선택이 되지 않는다. -->
	    <input type="checkbox" name="hobby" value="sleep" checked> 잠자기 <br>
	    <input type="checkbox" name="hobby" value="game"> 게임하기 <br>
	    <input type="checkbox" name="hobby" value="walk"> 걷기 <br>
	    <input type="checkbox" name="hobby" value="run" disabled> 달리기
	</form>
	<hr>
	
	<h2>드롭다운 리스트(하나만 선택 가능)</h2>
	<select name="fruit">
	    <option value="apple"> 라면
	    <option value="orange" selected> 소고기	<!-- selected 이면 초기값이 선택된 상태.. -->
	    <option value="strawberry"> 돼지고기
	    <option value="peach"> 치킨
	</select>
	
	
	
</body>
</html>