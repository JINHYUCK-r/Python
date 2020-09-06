<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레코드 표시</title>
</head>
<body>
<h2>member 테이블의 레코드 표시</h2>
<table border ="1">
	<tr>
	<td width="100">아이디</td>
	<td width="100">패스워드</td>
	<td width="100">이름</td>
	<td width="250">가입일자</td>
	</tr>
<%
Connection conn = null;	//레퍼런스 변수는 초기값은 null로 지정
PreparedStatement pstmt = null;
ResultSet rs = null;

try{
	//사용 하려는 데이터 베이스명을 포함한 url을 기술한다
	String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp"; //basicjsp는 DB명
	String dbId = "root";	//계정 id
	String dbPass = "";	//계정 패스워드
	
	//데이터베이스와 연동하기 위해 DreiverManager에 등록한다
	Class.forName("com.mysql.jdbc.Driver");	
	conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);	//Connection 객체를 얻어옴
	
	String sql = "select * from member"; //insert문 사용해서레코드를 추가
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery(); //단순히 읽어오기만 하므로 executeQuery()를 사용한다.
	
	while(rs.next()){
		String id = rs.getNString("id");
		String passwd = rs.getNString("passwd");
		String name = rs.getNString("name");
		Timestamp register = rs.getTimestamp("reg_date");
		
%>
	<tr>
	<td width="100"><%=id%></td>
	<td width="100"><%=passwd%></td>
	<td width="100"><%=name%></td>
	<td width="250"><%=register.toString()%></td>
	</tr>	
		
<% 	}

	
}catch(Exception e){
	e.printStackTrace();

}finally{ //pstmt 와 conn 이 할 일을 다했다면 close해 주어야 한다.
	if(pstmt != null)
		try{pstmt.close();}catch(SQLException sqle){}
	if(conn != null)
		try{pstmt.close();}catch(SQLException sqle){}

}


%>

	
</table>
</body>
</html>