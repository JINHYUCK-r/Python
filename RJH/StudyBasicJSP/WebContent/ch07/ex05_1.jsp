<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05_1</title>
</head>
<body>

<jsp:useBean id="testBean" class="ch07.bean.ex05Bean">
	<jsp:setProperty name="testBean" property="*"/>
</jsp:useBean>

	<table border="1">
			<colgroup>
				<col style="width: 200px">
				<col style="width: 850px">
			</colgroup>
			<tr>
				<td>이름</td>
				<td><jsp:getProperty property="name" name="testBean"/></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><jsp:getProperty property="id" name="testBean"/></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><jsp:getProperty property="passwd" name="testBean"/></td>
			</tr>
			
			<tr>
				<td>생일/성별</td>
				<td><jsp:getProperty property="year" name="testBean"/>년 
					<jsp:getProperty property="month" name="testBean"/>월
					<jsp:getProperty property="day" name="testBean"/>일 //
					<jsp:getProperty property="gender" name="testBean"/>
				</td>
			</tr>
			<tr>
				<td>우편변호</td>
				<td><jsp:getProperty property="postNum" name="testBean"/></td>
			</tr>
			<tr>
				<td>집주소</td>
				<td><jsp:getProperty property="address" name="testBean"/></td>
			</tr>
			<tr>
				<td>상세주소</td>
				<td><jsp:getProperty property="detailAddress" name="testBean"/></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><jsp:getProperty property="number" name="testBean"/>- 
				<jsp:getProperty property="num1" name="testBean"/>-
				<jsp:getProperty property="num2" name="testBean"/>
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><jsp:getProperty property="emailId" name="testBean"/> @ 
				<jsp:getProperty property="email" name="testBean"/></td>
			</tr>
			<tr>
				<td>회사주소</td>
				<td><jsp:getProperty property="comAddress" name="testBean"/></td>
			</tr>
			<tr>
				<td>휴대폰번호</td>
				<td><jsp:getProperty property="pnumber" name="testBean"/>- 
				<jsp:getProperty property="pnum1" name="testBean"/>-
				<jsp:getProperty property="pnum2" name="testBean"/></td>
			</tr>
			<tr>
				<td>뉴스메일</td>
				<td><jsp:getProperty property="mail" name="testBean"/></td>
			</tr>
			<tr>
				<td>SMS안내(이벤트)</td>
				<td><jsp:getProperty property="SMS" name="testBean"/></td>
			</tr>


</table>



</body>
</html>