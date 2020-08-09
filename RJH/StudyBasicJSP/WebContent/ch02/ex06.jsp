<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "color.jspf" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EX06</title>
</head>
<body bgcolor = <%=balue_c%> >
	<!-- ex06.jsp/ top.jsp / ex06_bottom.jsp 페이지를 작성한 후
		ex06.jsp 파일에서 top.jsp / bottom.jsp 파일을 포함시켜 추력하시요
		color.jspf파일을 복사해서 붙여놓은후 조각코드를 삽입하여 출력하시오
	 -->
	 <%@ include file ="top.jsp" %>
	 
	 <% String name ="홍길동";  %>
		<h2>ex06페이지 입니다.</h2>
		
	 <%@ include file ="bottom.jsp" %>
	 
</body>
</html>