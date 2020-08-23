<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학번, 이름, 학년, 선택과목을 입력하는 폼</title>
</head>
<body>
<!-- request 객체는 웹 브라우저에서 jsp 페이지로 전달되는 정보의 모임으로 http헤더와 http 바디로 구성되어있다.
 
	request 객체에서 사용자의 요구사항을 얻어내는 요청 메소드들
	String getparameter(name): 파라미터 변수 name에 저장된 변수값을 얻어내는 메소드로, 파라미터 변수 name에 해당하는 변수명이 없 으면 null값을 리턴한다.
	String[] getParameterValues(name): 파라미터 변수 name에 저장된 모든 변수값을 얻어내는 메소드로, 이때 변수의 값은 String 배열로 리턴된다. checkbox에서 주로 사용
	Enumeration getParameterNames(): 요청에 의해 넘어오는 모든 파라미터 변수를 java.util.Enumeration 타입으로 리턴한다. 변수가 가진 객체들을 저장해야 하므로 컬렉션이 Enumeration 타입으로 사용했다.

 -->
	<h2>학번, 이름, 학년, 선택과목을 입력하는 폼</h2>
	<form method="post" action="requestTestFormPro.jsp">
	학번: <input type="text" name="studentID"><br>
	이름: <input type="text" name="name"><br>
	학년: <input type="radio" name="grade" value="1학년" checked="checked">1학년&nbsp; <!-- &nbsp; 공백을 의미 -->
		<input type="radio" name="grade" value="2학년">2학년&nbsp;
		<input type="radio" name="grade" value="3학년">3학년&nbsp;
		<input type="radio" name="grade" value="4학년">4학년<br>
	선택과목: <select name="choice">
		<option value="java">java</option>
		<option value="jsp">jsp</option>
		<option value="c">c</option>
		</select><br>
	<input type="submit" value="입력완료">
	
	</form>


</body>
</html>