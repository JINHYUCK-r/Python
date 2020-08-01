<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz05</title>
</head>
<body>
	<h2>여름방학 특강 신청</h2>
	<form>
	<fieldset id ="subject">
	<legend>수강과목</legend>
	<ul>
		<li><label class ="reg" for="subj">영어회화(초급)</label>
		<input type ="text" id = "subj" value ="오전 9:00 ~11:00" readonly>
		</li>
	</ul>
	</fieldset>
	
	<fieldset id="register">
	<legend>신청자</legend>
	<ul>
		<li> <label class ="reg" for = "uclass">이름</label>
		<input type ="text" id="name" autofocus required></li>
		<li> <label class ="reg" for = "uid">학번</label>
		<input type ="text" id = "number" placeholder = "하이픈없이 입력" maxlength ="8"></li>
		<li> <label class ="reg" for = "uclass">학과</label>
		<select id ="subject">
			<option value ="컴공" selected>컴퓨터공학과</option>
			<option value ="건공">건축공학과</option>
			<option value = "산공">산업공학과</option>
		</select>
		</li>
	</ul>
	</fieldset>
	
	
	</form>
</body>
</html>