package kakao.com;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.naming.*;
import javax.sql.DataSource;

public class MapDBBean {
	  private static MapDBBean instance = new MapDBBean();
	  public static MapDBBean getInstance() {
		  return instance;
	  }
	  
	  private MapDBBean() {}
	  
	//커넥션풀로부터 Connection객체를 얻어냄
	private Connection getConnection() throws Exception {
	    Context initCtx = new InitialContext();
	    Context envCtx = (Context) initCtx.lookup("java:comp/env");
	    DataSource ds = (DataSource)envCtx.lookup("jdbc/StudyBasicJSP");
	    return ds.getConnection();
	}
	
	public int insertData(MapDataBean mapData) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		 
//		int num = mapData.getNum();
		String id = mapData.getId();
		String passwd = mapData.getPasswd();
		String name =  mapData.getName();
		String tel = mapData.getTel();
		String address = mapData.getTel();
		String info = mapData.getInfo();
		String lat = mapData.getLat();
		String lang = mapData.getLang();
		String sql="";
		int x = 0;
		
		try {
			conn = getConnection();
	        	
            pstmt = conn.prepareStatement("select * from kakaoTest where id = ?");
            pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(!rs.next()) {
				sql = "insert into kakaoTest(id,passwd,name,address,tel,info,lat,lang)";
			    sql+=" values(?,?,?,?,?,?,?,?)";
			    
			    pstmt2 = conn.prepareStatement(sql);
			    pstmt2.setString(1, id);
			    pstmt2.setString(2, passwd);
			    pstmt2.setString(3, name);
			    pstmt2.setString(4, address);
			    pstmt2.setString(5, tel);
			    pstmt2.setString(6, info);
			    pstmt2.setString(7, lat);
			    pstmt2.setString(8, lang);
			    
			    x = pstmt2.executeUpdate();
			}else {
				x = 0;
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (pstmt2 != null) try { pstmt2.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return x;
	}
	
	public List<MapDataBean> getDataAll() throws Exception {
		Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<MapDataBean> mapDataList=null;
        
        try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from kakaoTest");
//			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
        	if(rs.next()) {
        		mapDataList = new ArrayList<MapDataBean>();
        		
        		do{
        			MapDataBean mapData= new MapDataBean();
        			mapData.setNum(rs.getInt("num"));
        			mapData.setId(rs.getString("id"));
        			mapData.setName(rs.getString("name"));
        			mapData.setAddress(rs.getString("address"));
        			mapData.setTel(rs.getString("tel"));
        			mapData.setInfo(rs.getString("info"));
        			mapData.setLat(rs.getString("lat"));
        			mapData.setLang(rs.getString("lang"));
        			mapDataList.add(mapData);
  			    }while(rs.next());
        		
        	}
        	
        }catch(Exception ex) {
        	ex.printStackTrace();
        }finally {
        	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return mapDataList;
	}
	
	
	

}
