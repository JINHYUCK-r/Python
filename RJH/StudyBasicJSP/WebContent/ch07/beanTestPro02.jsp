<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanTestPro02</title>
</head>
<body>
<!-- 
	폼에서 넘어온  파라미터 명과 클래스의 프로퍼티 명이 다른경우 param 속서을 기술해야한다.
	param 속성값에는 폼에서부터 넘어온 파라미터명을 기술한다.
	property 속성값에는 자바빈의 변수명을 기술한다.
	하지만 이거는 코드가 길어지고 헷갈릴수있기때문에 가급적이면 이름을 맞추는것이 좋다.

 -->

 <jsp:useBean id="testBean" class="ch07.bean.TestBean">
 	<jsp:setProperty name="testBean" property="name" param="test"/>
 </jsp:useBean>
 
 <h2>자바빈을 사용하는 jsp페이지 02 </h2>

입력된 이름은 <jsp:getProperty property="name" name="testBean"/>입니다.

</body>
</html>