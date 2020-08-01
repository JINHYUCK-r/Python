<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h2>회원가입</h2>
	<hr>
	<form action="index.html">
		<table border="1">
			<colgroup>
				<col style="width: 200px">
				<col style="width: 850px">
			</colgroup>
			<tr>
				<td>이름</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" required> <input type="button"
					value="중복확인"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" required> *영어대소문자/숫자/특수문자를
					혼용하여 2종류 10~16자 또는 3종류 8~16자</td>
			</tr>
			<tr>
				<td>비밀번호확인</td>
				<td><input type="password" required></td>
			<tr>
				<td>생일/성별</td>
				<td><select name="year">
						<option value="choice" selected>선택
						<option value="1990">1990
						<option value="1995">1995
						<option value="2000">2000
				</select>년 <select name="month">
						<option value="choice" selected>선택
						<option value="1">1
						<option value="2">2
						<option value="3">3
				</select>월 <select name="day">
						<option value="choice" selected>선택
						<option value="1">1
						<option value="2">2
						<option value="3">3
				</select>일 <input type="radio" name="gender">남 <input type="radio"
					name="gender">여</td>
			</tr>
			<tr>
				<td>우편변호</td>
				<td><input type="text" size="3" readonly>-<input
					type="text" size="3" readonly> <input type="button"
					value="우편번호검색"></td>
			</tr>
			<tr>
				<td>집주소</td>
				<td><input type="text" size="30"></td>
			</tr>
			<tr>
				<td>상세주소</td>
				<td><input type="text" size="30"></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><select name="number">
						<option value="choice" selected>선택
						<option value="02">02
						<option value="053">053
				</select>- <input type="text" size="5">-<input type="text" size="5">
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" size="13"> @ <select
					name="email">
						<option value="choice" selected>선택
						<option value="naver">naver.com
						<option value="daum">daum.net
				</select></td>
			</tr>
			<tr>
				<td>회사주소</td>
				<td><input type="text" size="3">-<input type="text"
					size="3"> <input type="button" value="우편번호검색"><br>
					<input type="text"></td>
			</tr>
			<tr>
				<td>휴대폰번호</td>
				<td><select name="pnumber">
						<option value="choice" selected>선택
						<option value="010">010
						<option value="011">011
				</select>- <input type="text" size="5">-<input type="text" size="5"></td>
			</tr>
			<tr>
				<td>뉴스메일</td>
				<td><input type="radio" name="mail">받습니다 <input
					type="radio" name="mail">받지 않습니다.</td>
			</tr>
			<tr>
				<td>SMS안내(이벤트)</td>
				<td><input type="radio" name="SMS">받습니다 <input
					type="radio" name="SMS">받지 않습니다.</td>
			</tr>
		</table>
		<input type="submit" value="회원가입!"> <input type="reset"
			value="다시쓰기!">
	</form>
</body>
</html>