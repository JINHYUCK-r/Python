<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz06</title>
</head>
<body>
<h1>상품주문서</h1>
<form>
<fieldset>
<legend>개인정보</legend>
	<ul>
		<li><label>이름</label>
		<input type ="text" placeholder ="여백없이입력" required></li>
		<li><label>연락처</label>
		<input type ="text" placeholder ="연락가능한 번호" required></li>
	</ul>
</fieldset>
<fieldset>
<legend>배송지 정보</legend>
	<ul>
		<li><label>주소</label>
		<input box="text"></li>
		<li><label>전화번호</label>
		<input box="text"></li>
		<li><label>메모</label>
		<textarea name="memo" rows="5" cols="30"></textarea></li>
	</ul>
</fieldset>
<fieldset>주문정보
<ul>
	<li>
	<input type ="checkbox" value="과테말라">과테말라 안티구아 (100g)<input type="text" value="0">개</li><br>
	<input type ="checkbox" value="인도네시아">인도네시아 만델링 (100g)<input type="text" value="0">개</li><br>
</ul>
</fieldset>
	<input type="submit" value="주문하기">
	<input type="reset" value="다시작성">


</form>
</body>
</html>