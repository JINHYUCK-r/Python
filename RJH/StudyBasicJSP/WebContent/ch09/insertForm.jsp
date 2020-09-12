<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertForm</title>
</head>
<body>
	<form method ="post" action="insertPro.jsp">
	<table>
		<tr>
		<td class ="lable"><label for= "id">아이디</label></td>
		<td class="content"><input id="id" name="id" type="text" size="20" maxlength="50" placeholder = "example@kings.com" autofocus required ></td>
		</tr>
		
		<tr>
		<td class ="lable"><label for= "passwd">비밀번호</label></td>
		<td class="content"><input id="passwd" name="passwd" type="password" size="20" maxlength="16" placeholder = "6~16자 숫자/문자" required ></td>
		</tr>
		
		<tr>
		<td class ="lable"><label for= "name">이름</label></td>
		<td class="content"><input id="name" name="name" type="text" size="20" maxlength="10" placeholder = "킹도라" required ></td>
		</tr>
		
		<tr>
		<td class ="lable"><label for= "name">주소</label></td>
		<td class="content"><input id="addr" name="addr" type="text" size="20" maxlength="100" placeholder = "서울시" required ></td>
		</tr>
		
		<tr>
		<td class ="lable"><label for= "name">전화번호</label></td>
		<td class="content"><input id="tel" name="tel" type="text" size="20" maxlength="20" placeholder = "010-1111-1111" required ></td>
		</tr>
		<tr>
		<td class="label2" colspan="2"><input type="submit" value="입력완료">
			<input type="reset" value="다시입력"></td>
		</tr>
	</table>
	</form>

</body>
</html>