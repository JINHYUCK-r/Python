<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "color.jspf" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href = "style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src = "script.js"></script>
</head>
<body bgcolor = "<%=bodyback_c%>">
<%

	int num = 0, ref = 1, re_step=0, re_level = 0;
	String strV = "";
	try{	//list.jsp에서 글쓰기를 클릭후 들어오면 num=null이고, 리스트에서 글제목을 클릭해서 링크를 타고 content.jsp
		if(request.getParameter("num")!=null){	//답변글일경우
			num = Integer.parseInt(request.getParameter("num"));	//num 은 DB에 저장된 글번호
			ref = Integer.parseInt(request.getParameter("ref"));
			re_step = Integer.parseInt(request.getParameter("re_step"));
			re_level = Integer.parseInt(request.getParameter("re_level"));
			
		}
%>
<p>글쓰기</p>		
	<!--  -->
<form method ="post" name="writeform" action="writePro.jsp">
<input type="hidden" name="num" value="<%=num %>">
<input type="hidden" name="ref" value="<%=ref %>">
<input type="hidden" name="re_step" value="<%=re_step %>">
<input type="hidden" name="re_level" value="<%=re_level %>">

<table>
	<tr>
	<td align="right" colspan="2" bgcolor="<%=value_c %>">
		<a href="list.jsp">글목록</a>
	</td>
	</tr>
	<tr>
	<td width="70" bgcolor="<%=value_c %>" align="center">이름</td>
	<td width="330" align="left">
		<input type="text" size="10" maxlength="10" required name="writer" style="ime-mode:active;"></td> <!-- active:한글 해당 입력란에 포커스가 들어오면 자동으로 한글로 입력되도록 지정 -->
		</tr>
	<tr>
		<td width="70" bgcolor="<%=value_c %>" align="center">제목</td>
		<td width="330" align="left">
		<%
			if(request.getParameter("num")==null)	//원글일 경우
				strV="";
			else	//답변글일경우
				strV="[답변]";
		%>
		<input type="text" size="40" maxlength="50" name="subject" required value="<%=strV %>" style="ime-mode:active;"></td> 
		</tr>
		<tr>
	<td width="70" bgcolor="<%=value_c %>" align="center">Email</td>
	<td width="330" align="left">
		<input type="text" size="40" maxlength="30" required name="email" style="ime-mode:inactive;"></td> <!-- inactive: 영문 해당 입력란에 포커스가 들어오면 자동으로 영문로 입력되도록 지정 -->
		</tr>
	<tr>
	<td width="70" bgcolor="<%=value_c %>" align="center">내용</td>
	<td width="330" align="left">
		<textarea name="content" rows="13" cols="40" required style="ime-mode:active;"></textarea></td>
		</tr>	
	<tr>
	<td width="70" bgcolor="<%=value_c %>" align="center">비밀번호</td>
	<td width="330" align="left">
		<input type="password" size="8" maxlength="12" required name="passwd" style="ime-mode:inactive;"></td>
		</tr>
	<tr>
		<td colspan=2 bgcolor="<%=value_c %>" align="center">
		<input type="submit" value="글쓰기">
		<input type="reset" value="다시작성">
		<input type="button" value="목록보기" Onclick = "window.location = list.jsp">
		</td>
		</tr>	
</table>
<%
	}catch(Exception ex){}
%>

</form>	

</body>
</html>