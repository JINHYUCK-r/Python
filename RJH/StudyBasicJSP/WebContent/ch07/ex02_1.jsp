<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_1</title>
</head>
<body>
<h2>입력한 정보 표시</h2>
<jsp:useBean id="testBean" class="ch07.bean.ExBean">
	<jsp:setProperty name="testBean" property="*"/>
</jsp:useBean>

아이디: <jsp:getProperty name="testBean" property="id"/><br>
비밀번호: <jsp:getProperty name="testBean" property="passwd"/><br>
좋아하는 숫자: <jsp:getProperty name="testBean" property="number"/><br>

</body>
</html>