<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>    
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

Connection conn =null;
PreparedStatement pstmt = null;
PreparedStatement pstmt2 = null;
ResultSet rs = null;

try{
	String jdbcUrl = "jdbc:mysql://localhost:3306/jsptest";
	String dbId = "root";
	String dbPass = "";
	
	Class.forName("com.mysql.jdbc.Driver");	
	conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);	
	
	String sql = "select id, passwd from member where id=?"; //insert문 사용해서레코드를 추가
	pstmt = conn.prepareStatement(sql);
	pstmt.setNString(1, id);
	rs = pstmt.executeQuery();

	if(rs.next()){
		String rId = rs.getNString("id");
		String rPasswd = rs.getNString("passwd");
		
		if(id.equals(rId) && passwd.equals(rPasswd)){
			sql = "delete from member where id = ?";
			pstmt2 = conn.prepareStatement(sql);
			pstmt2.setNString(1, id);
			pstmt2.executeUpdate();
			
			out.println("데이터를 삭제했습니다.");
			
		}else{
			out.println("패스워드가 틀렸습니다.");}
	}else{
		out.println("아이디가 틀렸습니다.");}

	
	
}catch(Exception e){
	e.printStackTrace();
	
}finally{
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