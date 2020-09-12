<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	Timestamp register = new Timestamp(System.currentTimeMillis());
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");


	Connection conn =null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/jsptest";
		String dbId = "root";
		String dbPass = "";
		
		Class.forName("com.mysql.jdbc.Driver");	
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);	//Connection 객체를 얻어옴
		
		String sql = "insert into member values (?,?,?,?,?,?)"; //insert문 사용해서레코드를 추가
		pstmt = conn.prepareStatement(sql);
		pstmt.setNString(1, id);
		pstmt.setNString(2, passwd);
		pstmt.setNString(3, name);
		pstmt.setTimestamp(4, register);
		pstmt.setNString(5, addr);
		pstmt.setNString(6, tel);
		pstmt.executeUpdate();
		
		str = "member 테이블에 새로운 레코드를 추가했습니다.";

		
		}catch(Exception e){
			e.printStackTrace();
			str="member 테이블에 새로운 레코드 추가를 실패 했습니다.";
		}finally{ //pstmt 와 conn 이 할 일을 다했다면 close해 주어야 한다.
			if(pstmt != null)
				try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null)
				try{pstmt.close();}catch(SQLException sqle){}

		}
	%>
		

	<%=str %>
	
	



</body>
</html>