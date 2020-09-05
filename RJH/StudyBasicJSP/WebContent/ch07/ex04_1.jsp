<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Timestamp" %>  
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="testBean" class="ch07.bean.Ex04Bean">
	<jsp:setProperty name="testBean" property="*"/>
</jsp:useBean>

<% // 가입일은 직접 입력하지 않고 현재 날짜와 시간을 얻어내서 따로 저장한다.
		testBean.setReg_date(new Timestamp(System.currentTimeMillis()));
%>

<table border="1">
	<tr>
	<td>아이디</td>
	<td><jsp:getProperty name="testBean" property="id"/></td>
	</tr>
	<tr>
	<td>비밀번호</td>
	<td><jsp:getProperty name="testBean" property="passwd"/></td>
	</tr>
	<tr>
	<td>이름</td>
	<td><jsp:getProperty name="testBean" property="name"/></td>
	</tr>
	<tr>
	<td>가입일</td>
	<td><jsp:getProperty name="testBean" property="reg_date"/></td>
	</tr>

</table>
</body>
</html>