<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member테이블에 레코드 추가수행 결과</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	Timestamp register = new Timestamp(System.currentTimeMillis());
	
	
	
	Connection conn = null;	//레퍼런스 변수는 초기값은 null로 지정
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		//사용 하려는 데이터 베이스명을 포함한 url을 기술한다
		String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp"; //basicjsp는 DB명
		String dbId = "root";	//계정 id
		String dbPass = "";	//계정 패스워드
		
		//데이터베이스와 연동하기 위해 DreiverManager에 등록한다
		Class.forName("com.mysql.jdbc.Driver");	
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);	//Connection 객체를 얻어옴
		
		String sql = "insert into member values (?,?,?,?)"; //insert문 사용해서레코드를 추가
		pstmt = conn.prepareStatement(sql);
		pstmt.setNString(1, id);
		pstmt.setNString(2, passwd);
		pstmt.setNString(3, name);
		pstmt.setTimestamp(4, register);
		pstmt.executeUpdate(); //쿼리수행(inset, delete, update 경우 executeUpdate()사용하고 select문 처럼 단순히 읽어오기만 하는 경우는 executeQuery()를 사용한다 )
	
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