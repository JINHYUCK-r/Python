<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "color.jspf" %> <!-- 색상값을 갖고있는 조각코드 페이지를 가져오기 위해 include디렉티브 -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브 예제</title>
</head>
<body bgcolor = "<%=bodyback_c%>">
	<form>
		<label for ="id">아이디</label>
		<input type="email" id="id" placeholder="example@aaaa.com" required><br>
		<label for ="pass">비밀번호</label>
		<input type="text" id="pass" placeholder="비밀번호" required><br>
		<label for ="name">이름</label>
		<input type="text" id="name" placeholder="홍길동" required><br>
		<input type="submit" value="등록">
	</form>
	<!-- include 디렉티브는 소스코드를 복사한 후 같이 변환되어 컴파일 되지만
		뒤쪽에서 배울 include 액션태그는 포함되는 페이지의 실행결과만을 삽입나다.
		둘의 쓰임은 다르다. 반드시 둘다 사용할수있또록 알아두어야하낟.
	 -->
</body>
</html>