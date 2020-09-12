<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
</head>
<body>

<%
	String cookieName = "id";
	Cookie cookie = new Cookie(cookieName,"hongkd"); //쿠키의 이름이 id이고, 쿠키의 값이 hongkd인 쿠키를 생성한다.
	cookie.setMaxAge(60*2); // 쿠키의 지속시간을 2분으로 설정 (2분이 지나면 쿠키가 표시되지않는다.)
	response.addCookie(cookie);

%>
<h2>쿠키를 생성하는 페이지</h2>
	"<%=cookieName %>" 쿠키가 생성되었습니다. <br>
	<form method ="post" action="useCookie.jsp">
		<input type="submit" value="생성된 쿠키 확인">
	</form>
</body>
</html>