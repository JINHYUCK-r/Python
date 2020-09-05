<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanTestPro 페이지</title>
</head>
<body>
<!-- 
	아래 코드를 자바 코드와 비교해보기
	ch07.bean.TestBean testBean = new TestBean();
	testBean.setName(name);

 -->
 <jsp:useBean id="testBean" class="ch07.bean.TestBean">
 	<jsp:setProperty name="testBean" property="name"/>
 </jsp:useBean>
 <h2>자바빈을 사용하는 jsp페이지</h2>

<!--
	아래 코드를 자바 코드와 비교해보자
	useBean 액션태그가 위에서 사용되었으므로 testBean 인스턴스가 만들어져 잇는 상태이다
	testBean.getName();

 -->


입력된 이름은 <jsp:getProperty property="name" name="testBean"/>입니다.
</body>
</html>