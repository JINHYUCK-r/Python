package ch08.update;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import work.crypt.SHA256;
import work.crypt.BCrypt;



public class UpdateDBBean {
	
	private static UpdateDBBean instance = new UpdateDBBean();

	public static UpdateDBBean getInstance() {
		return instance;
	}

	private UpdateDBBean() {}
	
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/StudyBasicJSP");
		return ds.getConnection();
	}
	
	//입력받은 id의 비밀번호를 암호화해서 memberSHA 테이블에 저장
	
	public int updateMember(UpdateDataBean member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		int x = 0; //x가 0이면 같은 id가 없음. x=1이면 같은 아이디가 가있음
		// sha-256를 사용하는 sha256클래스의 객체를 얻어낸다
		SHA256 sha = SHA256.getInsatnce();
		
		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement(
						"select * from memberSHA where id =?");
			pstmt.setNString(1, member.getId());
			rs = pstmt.executeQuery();
			
			if(!(rs.next())) { //일치하는 id가 없으면
				//SHA256클래스의  getSha256()메소드를 사용해
				//월래의 비밀번호를 SHA-256방식으로 암호화
				String shaPass = sha.getSha256(member.getPasswd().getBytes());
				
				//SHA-256방식으로 암호화된 값을 다시 BCrypt클래스의 Hashpw()메소드를 사용해서 bcrypt방식으로 암호화
				//BCrypt.getsalt()메소드는 salt값을 난수로 사용해 생성
				String bcPass = BCrypt.hashpw(shaPass, BCrypt.gensalt());
				
				pstmt2 = conn.prepareStatement("insert into membersha values (?,?,?,?,?,?)");
				pstmt2.setNString(1, member.getId());
				pstmt2.setNString(2, bcPass);
				pstmt2.setNString(3, member.getName());
				pstmt2.setTimestamp(4, member.getReg_date());
				pstmt2.setNString(5, member.getAddress());
				pstmt2.setNString(6, member.getTel());
				pstmt2.executeUpdate();
				x=0; //같은 id가 없음
				
			}else {
				x=1; // 같은 id가 있음
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (rs != null) 
				try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) 
				try { pstmt.close(); } catch(SQLException ex) {}
			if (pstmt2 != null) 
				try { pstmt2.close(); } catch(SQLException ex) {}
			if (conn != null) 
				try { conn.close(); } catch(SQLException ex) {}
		}
		return x;
		}
		
	}

