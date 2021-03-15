package com.tjoeun.jsp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Member2DAO {
	private static Member2DAO dao;
	
	private Member2DAO() {}
	
	public static Member2DAO getInstance() {
		if(dao == null) {
			dao = new Member2DAO();
		}
		return dao;
	}
	
	private Connection getConnection() {

		Connection conn = null;
		
		try {
			
			Context ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public int confirmId(String id) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select id from member2 where id = ?";
		
		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1;
			}
			else {
				result = 0;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) {rs.close();}
				if(pstmt!=null) {pstmt.close();}
				if(conn!=null) {conn.close();}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public ArrayList<Member2DTO> list(){ // selectAll()
	  	
	  	ArrayList<Member2DTO> list 
	  	  = new ArrayList<Member2DTO>();
	  	
	  	Connection conn = null;
	  	PreparedStatement pstmt = null;
	  	ResultSet rs = null;
	  	
	  	String sql = "SELECT * FROM MEMBER2 ORDER BY REG_DATE DESC";
	  	
	  	conn = getConnection();
	  	
	  	try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					// DAO > DB > ResultSet > Member2DTO > ArrayList
					Member2DTO dto = new Member2DTO();
					dto.setId(rs.getString(1));
					dto.setPassword(rs.getString(2));
					dto.setName(rs.getString(3));
					dto.setAddress(rs.getString(4));
					dto.setTel(rs.getString(5));
					dto.setReg_date(rs.getTimestamp(6));
					
					list.add(dto);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if(rs != null) {rs.close();}
					if(pstmt != null) {pstmt.close();}
					if(conn != null) {conn.close(); System.out.println("DB Disconnected !!");}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
	  	
	  	return list;
	  	
	  }
	
	public int insert(Member2DTO dto) {
		int result=0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
	
		String sql = "insert into member2 values(?, ?, ?, ?, ?, sysdate)";
	
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getAddress());
			pstmt.setString(5, dto.getTel());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null) {pstmt.close();}
				if(conn!=null) {conn.close();}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public int check(String id, String password) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select password from member2 where id = ?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //아이디 존재함
				String dbPassword = rs.getString("password");
				
				if(dbPassword.equals(password)) { //로그인 성공
					result = 1;
				}
				else { //비밀번호 틀림
					result = -1;
				}
			}
			else { //아이디 존재 안함
				result = 0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) {rs.close();}
				if(pstmt!=null) {pstmt.close();}
				if(conn!=null) {conn.close();}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	
	//update
	public int update(Member2DTO dto) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "update member2 set password=?, name=?, address=?, tel=? where id=?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getPassword());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getAddress());
			pstmt.setString(4, dto.getTel());
			pstmt.setString(5, dto.getId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null) {pstmt.close();}
				if(conn!=null) {conn.close();}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public Member2DTO select(String id) {
	  	Member2DTO dto = null;
	  	Connection conn = null;
	  	PreparedStatement pstmt = null;
	  	ResultSet rs = null;
	  	
	  	String sql = "SELECT * FROM MEMBER2 WHERE ID=?";
	  	
	  	conn = getConnection();
	  	
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
				  dto = new Member2DTO();
				  dto.setId(rs.getString(1));
				  dto.setPassword(rs.getString(2));
				  dto.setName(rs.getString(3));
				  dto.setAddress(rs.getString(4));
				  dto.setTel(rs.getString(5));
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					if(rs != null) {rs.close();}
					if(pstmt != null) {pstmt.close();}
					if(conn != null) {conn.close(); System.out.println("DB Disconnected !!");}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
	  	return dto;
	  	
	  }
	
	public int delete(String id) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "delete member2 where id=?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null) {pstmt.close();}
				if(conn!=null) {conn.close();}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}
}
