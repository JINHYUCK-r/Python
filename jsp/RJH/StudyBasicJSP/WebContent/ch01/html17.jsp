<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>value특성</title>
</head>
<body>
	<h2>input 의  value 특성</h2>
	<!--  value의 속성은 초기값이라고 생각하면 된다. -->
	<form>
		이름 : <br><input type = "text" name = "student_name"><br>
		학변 : <br><input type = "text" name = "student_id"><br>
		학과 : <br><input type = "text" name = "department" value = "컴퓨터공학과"><br>
	</form>
	<hr>
	
	<h2>input 의  readonly 특성</h2>
	<!--  읽기만 가능하다. 수정이 불가능submit속성의 버튼을 클릭할경우 값은 전달이 된다. -->
	<form>
		이름 : <br><input type = "text" name = "student_name"><br>
		학변 : <br><input type = "text" name = "student_id"><br>
		학과 : <br><input type = "text" name = "department" value = "컴퓨터공학과" readonly><br>
	</form>
	<hr>
	
	<h2>input 의  disable 특성</h2>
	<!--  입력필드를 사용할수없다. 클릭도 안된다. submit속성의 버튼을 클릭할 경우 값 전달도 안된다. 회색박스로 뜸 -->
	<form>
		이름 : <br><input type = "text" name = "student_name"><br>
		학변 : <br><input type = "text" name = "student_id"><br>
		학과 : <br><input type = "text" name = "department" value = "컴퓨터공학과" disabled><br>
	</form>
	
	
</body>
</html>