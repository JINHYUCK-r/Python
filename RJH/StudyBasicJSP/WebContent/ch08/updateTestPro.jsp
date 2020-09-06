<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>     
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레코드 수정</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	
	Connection conn = null;	//레퍼런스 변수는 초기값은 null로 지정
	PreparedStatement pstmt = null;
	PreparedStatement pstmt2 = null; //PreparedStatement 객체는 재사용할수없기때문에 쓰려면 또 만들어주어야함
	ResultSet rs = null;
	
	try{
		//사용 하려는 데이터 베이스명을 포함한 url을 기술한다
		String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp"; //basicjsp는 DB명
		String dbId = "root";	//계정 id
		String dbPass = "";	//계정 패스워드
		
		//데이터베이스와 연동하기 위해 DreiverManager에 등록한다
		Class.forName("com.mysql.jdbc.Driver");	
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);	//Connection 객체를 얻어옴
		
		String sql = "select id, passwd from member where id=?"; //insert문 사용해서레코드를 추가
		pstmt = conn.prepareStatement(sql);
		pstmt.setNString(1, id);
		rs = pstmt.executeQuery();
	
		if(rs.next()){
			String rId = rs.getNString("id");
			String rPasswd = rs.getNString("passwd");
			if(id.equals(rId) && passwd.equals(rPasswd)){	//폼에서 입력한 id, 패스워드가 db에서 읽어온 id 패스워드와
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