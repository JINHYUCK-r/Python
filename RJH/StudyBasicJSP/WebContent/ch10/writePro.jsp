<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import = "ch10.board.BoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>    

<jsp:useBean id="article" scope="page" class="ch10.board.BoardDatabean">
	<jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%
	article.setReg_date(new Timestamp(System.currentTimeMillis()));
	article.setIp(request.getRemoteAddr()); //유저의 ip를 저장
	
	BoardDBBean dbPro = BoardDBBean.getInstance();
	dbPro.insertArticle(article);
	
	//response.sendRedirect("list.jsp"); //list.jsp페이지로 이동
%>