<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanTestPro03</title>
</head>
<body>
<!-- 
	폼으로부터 넘어오는 프로퍼티의 값이 여러개라면 property 속성값을 * 로 주면 모든 프로퍼티 값이 저장도니다.
	다음 예시는 많은 프로퍼티의 각각의 값을 한번에 지정하는 예이다
	단, 폼으로부터 넘어오는 파라미터의 이름과 개수가 프로퍼티의 이름과 개수가 같아야 한다.

 -->
<jsp:useBean id="testBean" class="ch07.bean.TestBean">
	<jsp:setProperty name="testBean" property="*"/>
</jsp:useBean>

입력된 id는 <jsp:getProperty property="id" name="testBean"/>입니다.	<br>
입력된 나이는 <jsp:getProperty property="age" name="testBean"/>입니다.<br>
입력된 이름는 <jsp:getProperty property="name" name="testBean"/>입니다.<br>
</body>
</html>