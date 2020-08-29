<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward 액션태그</title>
</head>
<body>
	<!-- forward 액션태그
		다른 페이지로 프로그램의 제어를 이동할때 사용되는 액션태그
		jsp 페이지 내에 forward 액션태그를 만나게 되면, 그전 까지 출력버퍼에 저장되어 있떤 내용을 제거하고, forward 액션태그가 지정하는 페이지로 이동
		사용자가 입력한 값에 따라 여러 페이지로 이동해야하는경우에 사용하면 좋다.
		Redirection과의 차이
		Redirection - 시스템에 변화가 생기는 요청(로그인, 회원가입)
		forward - 시스템에 변화가 없는 단순조회요청(글쓰기 버튼을 여러번 눌러도 실행이 되지 않는다.)
		속도는 forward가 빠르다
	 -->
	 <h2>forward 액션태그</h2>
	<!-- 
		forwardTestForm => forwardTest => forwardToTest 로 페이지가 이동된다.
		그런데 주소창을 보면 forwardTest.jsp파일의 경로가 출력된다.
		하지만 실제 내용을 보면 forwardToTest.jsp파일의 내용이 출력된것이다.
		즉, 요청된 페이지는 forwardTest 페이지 이지만 웹 브라우저에 표출되는 내용은 forwardToTest.jsp이다
	 -->
	 <form method ="post" action ="forwardTest.jsp">
	 아이디: <input type="text" name="id"><br>
	 취미 : <select name="hobby">
	 	<option value="WOW">WOW</option>
	 	<option value="만화보기">만화보기</option>
	 	<option value="잠자기">잠자기</option>
	 </select><br>
	 <input type="submit" value="입력완료">

	 </form>
</body>
</html>