<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, javax.sql.*, javax.naming.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커넥션풀을 사용한 member 테이블의 레코드를 화면에 표시하는 예제</title>
</head>
<body>
  <h3>커넥션 풀을 사용한 member 테이블의 레코드를 화면에 표시하는 예제</h3>
  <TABLE border="1">
  <TR>
  	<TD width="100">아이디</TD>
  	<TD width="100">패스워드</TD>
  	<TD width="100">이름</TD>
  	<TD width="250">가입일자</TD> 
  </TR>
<%
  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;

  try{
	Context initCtx = new InitialContext();	//initCtx 인스턴스를 생성..
	//lookup 메소드를 사용해 "java:comp/env"에 해다앟는 객체를 찾아서 envCtx에 넣는다.
    Context envCtx = (Context) initCtx.lookup("java:comp/env"); 
	//"java:comp/env"로 찾아낸 객체 envCtx의 lookup 메소드를 사용해 "jdbc/StudyBasicJSP"를 가지고 객체를 얻어내서
	// DataSource 타입으로 형 변환 한후 ds에 저장한다.
    DataSource ds = (DataSource)envCtx.lookup("jdbc/StudyBasicJSP");//jdbc/프로젝트명..(DB경로는 서버에 셋팅되어있다.)
    //getConnection 객체를 사용해서 커넥션 풀로부터 객체를 얻어내어 conn 에 저장한다. 이제 부터 conn를 사용해서 DB와 연동한다.
    conn = ds.getConnection();

	String sql= "select * from member";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();

	while(rs.next()){
	  String id= rs.getString("id");
      String passwd= rs.getString("passwd");
      String name= rs.getString("name");
      Timestamp register=rs.getTimestamp("reg_date");

%>
     <TR>
  	   <TD width="100"><%=id%></TD>
  	   <TD width="100"><%=passwd%></TD>
  	   <TD width="100"><%=name%></TD>
  	   <TD width="250"><%=register.toString()%></TD>
    </TR>
<%  } 
  }catch(Exception e){ 
		e.printStackTrace();
  }finally{	
	    if(rs != null) try{rs.close();}catch(SQLException sqle){}
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
		//Connection 객체를 메모리에서 제거하는 것이 아니라 커넥션 풀로 Connection 객체를 반환 한는 것이다.
		if(conn != null) try{conn.close();}catch(SQLException sqle){}
  }
%>
    
</table>
</body>
</html>