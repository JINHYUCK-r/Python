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
    
    //커넥션풀로부터 Connection객체를 얻어냄
    private Connection getConnection() throws Exception {
        Context initCtx = new InitialContext();
        Context envCtx = (Context) initCtx.lookup("java:comp/env");
        DataSource ds = (DataSource)envCtx.lookup("jdbc/StudyBasicJSP");
        return ds.getConnection();
    }
 
    //board테이블에 글을 추가(inset문)<=writePro.jsp페이지에서 사용
    public void insertArticle(BoardDatabean article) 
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        PreparedStatement pstmt2 = null;
        PreparedStatement pstmt3 = null;
		ResultSet rs = null;

		int num=article.getNum();
		int ref=article.getRef();
		int re_step=article.getRe_step();
		int re_level=article.getRe_level();
		int number=0;
        String sql="";

        try {
            conn = getConnection();
        	
            pstmt = conn.prepareStatement("select max(num) from board");
			rs = pstmt.executeQuery();
			
			if (rs.next())
		      number=rs.getInt(1)+1;//DB의num의 시작 번호가 0번 이지만 게시판에 글목록은 1번부터 시작 이므로 +1을 해주었다.
		    else
		      number=1; //글목록에 글이 하나도 없으면 number를 1로 ...
		   
		    if (num!=0) {  //댓글일 경우
		      //update의 경우 re_level 이 같은 글이 등록될 경우에만 실행이 된다.
		      //현재 글을 기준으로 re_step보다 큰 값이 오면 모든 re_step 에 +1을 해준다.	
		      sql="update board set re_step=re_step+1 ";
		      sql += "where ref= ? and re_step> ?";
              pstmt2 = conn.prepareStatement(sql);
              pstmt2.setInt(1, ref);
			  pstmt2.setInt(2, re_step);
			  pstmt2.executeUpdate();
			  
			  re_step=re_step+1;
			  re_level=re_level+1;
		     }else{	//원글일 경우
		  	  ref=number;
			  re_step=0;
			  re_level=0;
		     }	 
            // 쿼리를 작성
            sql = "insert into board(writer,email,subject,passwd,reg_date,";
		    sql+="ref,re_step,re_level,content,ip) values(?,?,?,?,?,?,?,?,?,?)";

            pstmt3 = conn.prepareStatement(sql);
            pstmt3.setString(1, article.getWriter());
            pstmt3.setString(2, article.getEmail());
            pstmt3.setString(3, article.getSubject());
            pstmt3.setString(4, article.getPasswd());
			pstmt3.setTimestamp(5, article.getReg_date());
            pstmt3.setInt(6, ref);
            pstmt3.setInt(7, re_step);
            pstmt3.setInt(8, re_level);
			pstmt3.setString(9, article.getContent());
			pstmt3.setString(10, article.getIp());
			
            pstmt3.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (pstmt2 != null) try { pstmt2.close(); } catch(SQLException ex) {}
            if (pstmt3 != null) try { pstmt3.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
    //board테이블에 저장된 전체글의 수를 얻어냄(select문)<=list.jsp에서 사용
	public int getArticleCount()
             throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        int x=0;

        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement("select count(*) from board");
            rs = pstmt.executeQuery();

            if (rs.next()) {
               x= rs.getInt(1);
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
    }

	//글의 목록(복수개의 글)을 가져옴(select문) <=list.jsp에서 사용
	public List<BoardDatabean> getArticles(int start, int end)
             throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<BoardDatabean> articleList=null;
        try {
            conn = getConnection();
            //desc는 내림차순(큰 값 ->작은 값), asc는 오름차순(작은 값 -> 큰 값)으로 정렬하라는 뜻..생략시 asc..
            pstmt = conn.prepareStatement(
            	"select * from board order by ref desc, re_step asc limit ?,? ");
            pstmt.setInt(1, start-1);	//읽어올 시작 번호(DB는 0번부터 시작이고 게시판에 출력하는 글번호는 1부터 시작이라서 -1을 해주었다.)
			pstmt.setInt(2, end);		//읽어올 개수
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                articleList = new ArrayList<BoardDatabean>(end);
                do{	//ArrayList에 board 테이블에서 가져온 레코드를 하나씩 BoardDataBean 객체로 생성해서 ArrayList에 넣는다.
                	BoardDatabean article= new BoardDatabean();
				  article.setNum(rs.getInt("num"));
				  article.setWriter(rs.getString("writer"));
                  article.setEmail(rs.getString("email"));
                  article.setSubject(rs.getString("subject"));
                  article.setPasswd(rs.getString("passwd"));
			      article.setReg_date(rs.getTimestamp("reg_date"));
				  article.setReadcount(rs.getInt("readcount"));
                  article.setRef(rs.getInt("ref"));
                  article.setRe_step(rs.getInt("re_step"));
				  article.setRe_level(rs.getInt("re_level"));
                  article.setContent(rs.getString("content"));
			      article.setIp(rs.getString("ip")); 
				  
                  articleList.add(article);
			    }while(rs.next());
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return articleList;
    }
 
	//글의 내용을 보기(1개의 글)(select문)<=content.jsp페이지에서 사용
	public BoardDatabean getArticle(int num)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        PreparedStatement pstmt2 = null;
        ResultSet rs = null;
        BoardDatabean article=null;
        try {
            conn = getConnection();
            //조회수(readcount)를 +1 해준다..	
            pstmt = conn.prepareStatement(
            	"update board set readcount=readcount+1 where num = ?");
			pstmt.setInt(1, num);
			pstmt.executeUpdate();

            pstmt2 = conn.prepareStatement(
            	"select * from board where num = ?");
            pstmt2.setInt(1, num);
            rs = pstmt2.executeQuery();

            if (rs.next()) {
                article = new BoardDatabean();
                article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
                article.setEmail(rs.getString("email"));
                article.setSubject(rs.getString("subject"));
                article.setPasswd(rs.getString("passwd"));
			    article.setReg_date(rs.getTimestamp("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
                article.setRef(rs.getInt("ref"));
                article.setRe_step(rs.getInt("re_step"));
				article.setRe_level(rs.getInt("re_level"));
                article.setContent(rs.getString("content"));
			    article.setIp(rs.getString("ip"));     
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (pstmt2 != null) try { pstmt2.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return article;
    }
    
	//글 수정폼에서 사용할 글의 내용(1개의 글)(select문)<=updateForm.jsp에서 사용
	//위의 getArticle(int num)와 거의 같으나 차이점은 updateGetArticle(int num)는 조회수슬 증가시키는 부분이 없다는 것이다.
	//작업이 차이 나므로 반드시 게시판의 냉용를 보여주는 메소드와 글을 수정하는 메소드를 따로 작성해야 한다.
    public BoardDatabean updateGetArticle(int num)
          throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        BoardDatabean article=null;
        try {
            conn = getConnection();

            pstmt = conn.prepareStatement(
            	"select * from board where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();

            if (rs.next()) {	
                article = new BoardDatabean();
                article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
                article.setEmail(rs.getString("email"));
                article.setSubject(rs.getString("subject"));
                article.setPasswd(rs.getString("passwd"));
			    article.setReg_date(rs.getTimestamp("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
                article.setRef(rs.getInt("ref"));
                article.setRe_step(rs.getInt("re_step"));
				article.setRe_level(rs.getInt("re_level"));
                article.setContent(rs.getString("content"));
			    article.setIp(rs.getString("ip"));     
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return article;
    }

    //글 수정처리에서 사용(update문)<=updatePro.jsp에서 사용
    public int updateArticle(BoardDatabean article)
          throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        PreparedStatement pstmt2 = null;
        ResultSet rs= null;

        String dbpasswd="";
        String sql="";
		int x=-1;
        try {
            conn = getConnection();
            
			pstmt = conn.prepareStatement(
            	"select passwd from board where num = ?");
            pstmt.setInt(1, article.getNum());
            rs = pstmt.executeQuery();
            
			if(rs.next()){	//num으로 검색한 passwd가 있으면..
			  dbpasswd= rs.getString("passwd"); 
			  if(dbpasswd.equals(article.getPasswd())){//수정할 글번호의 비밀번호와 사용자가 입력한 비밀번호가 같은가를 비교..
                sql="update board set writer=?,email=?,subject=?,passwd=?";
			    sql+=",content=? where num=?";
                pstmt2 = conn.prepareStatement(sql);

                pstmt2.setString(1, article.getWriter());
                pstmt2.setString(2, article.getEmail());
                pstmt2.setString(3, article.getSubject());
                pstmt2.setString(4, article.getPasswd());
                pstmt2.setString(5, article.getContent());
			    pstmt2.setInt(6, article.getNum());
                pstmt2.executeUpdate();
				x= 1;
			  }else{	//사용자가 입력한 비밀번호와 DB에서 불러온 비밀 번호가 틀리면.. 
				x= 0;
			  }
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (pstmt2 != null) try { pstmt2.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
    }
    
    //글삭제처리시 사용(delete문)<=deletePro.jsp페이지에서 사용
    public int deleteArticle(int num, String passwd)
        throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        PreparedStatement pstmt2 = null;
        ResultSet rs= null;
        String dbpasswd="";
        int x=-1;
        try {
			conn = getConnection();

            pstmt = conn.prepareStatement(
            	"select passwd from board where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();
            
			if(rs.next()){	//num으로 검색한 passwd가 있으면..
				dbpasswd= rs.getString("passwd"); 
				if(dbpasswd.equals(passwd)){//수정할 글번호의 비밀번호와 사용자가 입력한 비밀번호가 같은가를 비교..
					pstmt2 = conn.prepareStatement(
            	      "delete from board where num=?");
                    pstmt2.setInt(1, num);
                    pstmt2.executeUpdate();
					x= 1; //글삭제 성공
				}else
					x= 0; //비밀번호 틀림
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (pstmt2 != null) try { pstmt2.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
    }
}