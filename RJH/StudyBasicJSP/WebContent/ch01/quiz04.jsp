<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz04</title>
</head>
<body>
	<form>
	<fieldset>
	<legend>신청 과목</legend>
	<p>이 달에 신청할 과목을 선택하세요(1과목만 가능)</p>
	<label><input type = "radio" name ="name" value ="회화" checked>회화</label> <!-- label는 자바스크립트에서  글자를 바꾸거나할때 사용-->
	<label><input type = "radio" name ="name" value ="문법">문법</label>
	<label><input type = "radio" name  ="name" value = "작문">작문</label>
	</fieldset>
	<fieldset>
	<legend>메일링</legend>
	<p>메일로 받고 싶은 뉴르 주제를 선택해 주세요 (복수 선택 가능)</p>
	<label><input type ="checkbox" name = "email" value ="단신">해외단신</label>
	<label><input type ="checkbox" name = "email" value ="5분">5분회화</label>
	<label><input type = "checkbox" name = "email" value ="모닝">모닝팝스</label>
	</fieldset>
	</form>
</body>
</html>