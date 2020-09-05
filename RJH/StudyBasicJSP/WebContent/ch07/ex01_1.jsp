<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex01_1</title>
</head>
<body>

<jsp:useBean id="testBean" class="ch07.bean.ExBean">
	<jsp:setProperty name="testBean" property="id"/>
</jsp:useBean>

아이디: <jsp:getProperty property="id" name="testBean"/>
</body>
</html>