<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %> <!-- jsp에서 jdbc의 클래스를 사용하기위해서 --> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC드라이버 테스트</title>
</head>
<body>
	<h2>JDBC드라이버테스트</h2>
<%
	Connection conn = null;	//레퍼런스 변수는 초기값은 null로 지정
	
	try{
		//사용 하려는 데이터 베이스명을 포함한 url을 기술한다
		String jdbcUrl = "jdbc:mysql://localhost:3306/studybasicjsp";
		String dbId = "root";
		String dbPass = "";
		
		//데이터베이스와 연동하기 위해 DreiverManager에 등록한다
		Class.forName("com.mysql.jdbc.Driver");
		
		//DriverManager 객체로 부터 Connerction 객체를 얻어온다	
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		//커넥션이 제대로 연결되면 수행된다.
		out.println("연결완료");
		
	}catch(Exception e){
		e.printStackTrace();
	}

	
%>	
</body>
</html>