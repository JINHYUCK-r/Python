<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>여러 데이터를 나열해 보여주기</h2>
	<form>
	<fieldset>
	<legend>수강 신청인(기본)</legend>
	<ul>
		<li>
			<label class ="reg" for ="id">학번</label>
			<input type="text" id="id" autofocus>
		</li>	
		<li>
			<label class = "reg" for ="name">이름</label>
			<input type ="text" id="name">
		</li>	
		<li>
			<label class ="reg" for ="class">학과</label>
			<select id ="class">
				<option value ="archi">건축공학과</option>
				<option value ="mechanic">기계공학과</option>
				<option value ="indust">산업공학과</option>
				<option value ="elec">전기전자공학과</option>
				<option value = "computer" selected>컴퓨터공학과</option>
				<option value = "chemical">화학공학과</option>	
			</select>
		</li>
	</ul>
	</fieldset>
	</form>
	<hr>
	
	<h1>여름방학 특강신청</h1>
		<form>
		<fieldset>
		<legend>수강 신청인(옵션을 이용한 다중선택)</legend>
		<ul>
			<li>
				<label class="reg" for ="id">학번</label>
				<input type ="text" id="id" autofocus>
			</li>
			<li>
				<label class="reg" for = "name">이름</label>	
				<input type ="text" id = "id">
			</li>
			<li>
			<label class="reg" for = "class">학과</label>
			<select size = "5" id="class" multiple><!-- 5개씩 보이고 다중 선택 가능  컨트롤로 -->
				<option value ="archi">건축공학과</option>
				<option value ="mechanic">기계공학과</option>
				<option value ="indust">산업공학과</option>
				<option value ="elec">전기전자공학과</option>
				<option value = "computer" selected>컴퓨터공학과</option>
				<option value = "chemical">화학공학과</option>	
			</select>
			</li>
		</ul>
		</fieldset>
		</form>
		
</body>
</html>