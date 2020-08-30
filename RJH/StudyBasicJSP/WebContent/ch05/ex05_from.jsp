<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- from 에서 값을 to로 넘겨서 출력 -->
<%
	String id = "kingdora@kings.com";
	String name = "김개동";
%>

<jsp:forward page="ex05_to.jsp">
	<jsp:param value="<%=name %>" name="name"/>
	<jsp:param value="<%=id %>" name="id"/>
</jsp:forward>

</body>
</html>



<!-- 
<%--
	request.setAttribute("id","kingdora@kings.com");
	request.setAttribute("name",""김제동"


 <jsp:forward page = "ex05_to.jsp"></jsp:forward>
 
 --%>
 이런식으로 써서 전달할수도 있다.
  -->