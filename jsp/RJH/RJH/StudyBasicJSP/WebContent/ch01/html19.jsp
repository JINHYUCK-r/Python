<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>히든 필드 만들기</title>
</head>
<body>
	<h2>type = "hidden" - 히든 필드 만들기</h2>
	<!-- <input type = "hidden" name = "이름" value = "서버로 넘길 값"> -->
	<form action="html18.jsp" method="get"><!-- get일경우 날라가는 값이 보인다. post는 안보임 -->
		<label> 주소창을 잘 보세요!</label>
		<input type="hidden" name="agrement" value="Y">
		<input type="submit" value="전송">	
	</form>
</body>
</html>