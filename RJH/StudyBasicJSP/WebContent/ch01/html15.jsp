<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<h2>여러줄의 글을 입력 받는 TextArea</h2>
	<textarea name="message" rows="5" cols="30"><!-- 5줄 , 30px -->
			여기에 글을 입력 하시면 됩니다.
 	</textarea>
 	<hr>
 	
 	<h2>일반 버튼</h2>
 	<button type="button" onclick="alert('버튼을 클릭하셨군요!')">
    	버튼 클릭!
	</button>
	
	<h2>전송 버튼</h2>
		<form action="html14.jsp">
    		가장 좋아하는 가수를 적어 주세요 : <br>
    		<input type="text" name="singer" value="BTS"><br><br>
    		<input type="submit" value="전송">
		</form> 
		
</body>
</html>