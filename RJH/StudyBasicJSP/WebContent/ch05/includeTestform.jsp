<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 액션태그</title>
<!-- include 디렉티브는 단순하게 소스의 내용이 텍스트로 포함(코들르 복사해서 함께 서블릿으로 변환한다.)
	include 앵ㄱ션태그는 포함시킬 페이지의 처리결과를 포함시킨다는 점이 include디렉티브와 다르다
	포함되는 페이지는 html,jsp,servlet페이지 모두 가능하다
	include 액션태그와ㅗ include 디렉티브는 처리방식도 다르지만 사용되는 방법도 다른다
	include 디렉티브는 주로 조각코드를 삽입할때 사용되고, include 액션태그는 페이지를 모듈화 할때 사용된다. 즉 템플릿 페이지를 작성할때 사용된다.
	-->
</head>
<body>
	<h2>include 액션태그</h2>
	<form action="includeTest.jsp" method ="post">
		이름 : <input type ="text" name ="name"><br>
		페이지이름: <input type="text" name ="pageName" value="includedTest"><br>
		<input type="submit" value="입력완료">
	</form>


</body>
</html>