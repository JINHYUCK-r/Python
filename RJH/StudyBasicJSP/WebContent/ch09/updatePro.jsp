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
	
	Connection conn = null;	
	PreparedStatement pstmt = null;
	PreparedStatement pstmt2 = null; 
	ResultSet rs = null;
	
	try{
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/jsptest"; 
		String dbId = "root";	
		String dbPass = "";	
		
		Class.forName("com.mysql.jdbc.Driver");	
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);	
		
		String sql = "select id, passwd from member where id=?"; 
		pstmt = conn.prepareStatement(sql);
		pstmt.setNString(1, id);
		rs = pstmt.executeQuery();
	
		if(rs.next()){
			String rId = rs.getNString("id");
			String rPasswd = rs.getNString("passwd");
			
			if(id.equals(rId) && passwd.equals(rPasswd)){	
				sql = "update member set name= ? where id = ?";
				pstmt2 = conn.prepareStatement(sql);
				pstmt2.setNString(1, name);
				pstmt2.setNString(2, id);
				pstmt2.executeUpdate();
				
				out.println("데이터를 수정했습니다.");
				
			}else{
				out.println("패스워드가 틀렸습니다.");}
		}else{
			out.println("아이디가 틀렸습니다.");}
	

		
	}catch(Exception e){
		e.printStackTrace();
		
	}finally{ //pstmt 와 conn 이 할 일을 다했다면 close해 주어야 한다.
		if(rs != null)
			try{rs.close();}catch(SQLException sqle){}
		if(pstmt != null)
			try{pstmt.close();}catch(SQLException sqle){}
		if(pstmt2 != null)
			try{pstmt2.close();}catch(SQLException sqle){}
		if(conn != null)
			try{conn.close();}catch(SQLException sqle){}

	}


%>

</body>
</html>