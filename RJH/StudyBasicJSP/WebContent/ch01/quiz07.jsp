<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz07</title>
</head>
<body>
	<h1>프런트엔드 개발자 지원서</h1>
	<p>HTML,CSS,Javascript에 대한 기술적 디해와 경험이 있는 분을 찾습니다.
	<hr>
	<form>
		<h4>개인정보</h4>
		<ul>
			<li><label>이름</label> <input type="text" autofocus
				placeholder="공백없이 입력하세요"></li>
			<li><label>연락처</label> <input type="text"></li>
		</ul>
		<h4>지원분야</h4>
		<ul>
			<li><label></label><input type="radio" name="job">웹퍼블리싱<label></li>
			<li><input type="radio" name="job">웹 애플리케이션 개발</li>
			<li><input type="radio" name="job">개발 환경 개선</li>
		</ul>
		<h4>지원동기</h4>
		<textarea rows="6" cols="50" placeholder="본사 지원 동기를 간략히 써 주세요"></textarea>
		<br> <input type="submit" value="접수하기"> 
		<input type="reset" value="다시쓰기">
		<!-- 다음과 같이 작성해도 됨
		<button type ="submit">접수하기</button>
		<button type ="reset">다시쓰기</button>
		 -->
	</form>
</body>
</html>