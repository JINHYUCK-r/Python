<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈 사용예제 - 이름을 입력하는 폼</title>
</head>
<body>
<h2>이름을 입력하세요</h2>
<!-- 자바빈 작성시 톰캣 서버를 내린다. 자바빈 클래스를 포함한 로직코드를 수정할 경우 톰캣서버의 재기동이 필요하기 때문이다
	패키지 명은 xx.xx처럼 2단계로 주는것이 권장사항이다
 -->

<form action="beanTestPro.jsp" method = "post">
 이름 : <input type="text" name="name"><br>
 	<input type="submit" value ="입력완료">
</form>
</body>
</html>