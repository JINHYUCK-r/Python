<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "kakao.com.MapDBBean" %>

<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="mapDataBean" scope="page" class="kakao.com.MapDataBean">
   <jsp:setProperty name="mapDataBean" property="*"/>
</jsp:useBean>

<%
    MapDBBean mapDBBean = MapDBBean.getInstance();
    int x = mapDBBean.insertData(mapDataBean); 
	if(x == 0){
%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<script type="text/javascript">
		alert("중복된 아이디가 존재합니다!");
		location.href= "insertForm.jsp";
	</script>
	</head>
	<body>
	</body>
	</html>
<%}	
	else{
		response.sendRedirect("kakaoMap.jsp");	//kakaoMap.jsp 페이지로 이동..
	}
%>
