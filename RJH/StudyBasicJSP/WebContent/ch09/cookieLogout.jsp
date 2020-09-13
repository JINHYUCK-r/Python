<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("id")){
				cookies[i].setMaxAge(0); //cookie.setMaxAge(0); 은 쿠키의 최대기간을 0으로 지정해주면 제거된다.
				response.addCookie(cookies[i]);
			}
		}
	}

%>
<script>
alert("로그아웃되었습니다.");
location.href = "cookieMain.jsp"
</script>