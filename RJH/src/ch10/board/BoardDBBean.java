package ch10.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDBBean {
	private static BoardDBBean instance = new BoardDBBean();
	//.jsp페이지에서 DB연동빈인 BoardDBBean클래스의 메소드에 접근시 필요

	public static BoardDBBean getInstance() {
		return instance;
	}

	private BoardDBBean() {}
	
	//커넥션풀로 부터 Connection객체를 얻어냄
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/StudyBasicJSP");
		return ds.getConnection();
	}
	
	//board테이블에 글을 추가 (insert문) <=writePro.jsp에서 사용
	public void insertArticle(BoardDatabean article) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		PreparedStatement pstmt3 = null;
		ResultSet rs = null;
		
		int num = article.getNum();
		int ref = article.getRef();
		int re_step = article.getRe_step();
		int re_level = article.getRe_level();
		int number = 0;
		String sql = "";
		
		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement("select max(num) from board");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				number = rs.getInt(1)+1; //DB의 num의 시작번호가  0번이지만 게시판에 글목록은 1번부터 시작이므로	
			}else {
				number = 1;	//글목록에 글이 하나도 없으면 1로
			}
			if(num !=0) {	//댓글일 경우
				//update의 경우re_level이 같은 글이 등록될 경우에만 실행이 된다.
				// 현재 긍를 기준으로re_step보다 큰 값이 오면 re_step에 +1을 해 준다.
				sql = "update board set re_step=re_step+1 where ref=? and re_step>?";
				pstmt2 = conn.prepareStatement(sql);
				pstmt2.setInt(1, ref);
				pstmt2.setInt(2, re_step);
				pstmt2.executeUpdate();
						
				re_step = re_step+1;
				re_level = re_level+1;
			}else {	//원글인 경우
				ref = number;
				re_step=0;
				re_level=0;
			}
			//쿼리를 작성
			sql = "insert into board(writer,email,subject,passwd,reg_date,ref,re_step,re_level,content,ip) values(?,?,?,?,?,?,?,?,?,?)";
			pstmt3 = conn.prepareStatement(sql);
			pstmt3.setNString(1, article.getWriter());
			pstmt3.setNString(2, article.getEmail());
			pstmt3.setNString(3, article.getSubject());
			pstmt3.setNString(4, article.getPasswd());
			pstmt3.setTimestamp(5, article.getReg_date());
			pstmt3.setInt(6, ref);
			pstmt3.setInt(7, re_step);
			pstmt3.setInt(8, re_level);
			pstmt3.setNString(9, article.getContent());
			pstmt3.setNString(10, article.getIp());
			
			pstmt3.executeUpdate();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (rs != null) 
				try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) 
				try { pstmt.close(); } catch(SQLException ex) {}
			if (pstmt2 != null) 
				try { pstmt2.close(); } catch(SQLException ex) {}
			if (pstmt3 != null) 
				try { pstmt3.close(); } catch(SQLException ex) {}
			if (conn != null) 
				try { conn.close(); } catch(SQLException ex) {}
		}
	}
	
	
	
	
	
	
	
	
	
	
	
}
