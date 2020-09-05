<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03_1</title>
</head>
<body>
<jsp:useBean id="testBean" class="ch07.bean.Ex03Bean">
	<jsp:setProperty name="testBean" property="*"/>
</jsp:useBean>

	이름: <jsp:getProperty name="testBean" property="name"/><br>
	이메일: <jsp:getProperty name="testBean" property="email"/><br>
	방문소감: <jsp:getProperty name="testBean" property="content"/><br>
	비밀번호: <jsp:getProperty name="testBean" property="passwd"/><br>
</body>
</html>