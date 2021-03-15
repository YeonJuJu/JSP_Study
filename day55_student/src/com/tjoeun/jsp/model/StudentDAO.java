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

public class StudentDAO {
	private static StudentDAO dao = null;
	
	public StudentDAO() {}
	
	public static StudentDAO getInstance() {
		if(dao==null) {
			dao = new StudentDAO();
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
	
	public StudentDTO select(String id) {
		StudentDTO dto = null;
	  	Connection conn = null;
	  	PreparedStatement pstmt = null;
	  	ResultSet rs = null;
	  	
	  	String sql = "SELECT * FROM STUDENT WHERE ID=?";
	  	
	  	conn = getConnection();
	  	
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
				  dto = new StudentDTO();
				  dto.setId(rs.getString("id"));
				  dto.setPw(rs.getString("pw"));
				  dto.setName(rs.getString("name"));
				  dto.setGrade(rs.getString("grade"));
				  dto.setDate(rs.getTimestamp("reg_date"));
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
	
	public int insert(StudentDTO dto) {
		int result=0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
	
		String sql = "insert into student values(?, ?, ?, ?, sysdate)";
	
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getGrade());
			
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
	
	public int delete(String id) {
		int result=0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
	
		String sql = "delete from student where id=?";
		
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
	
	public int update(StudentDTO dto) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "update student set pw=?, name=?, grade=? where id=?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getPw());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getGrade());
			pstmt.setString(4, dto.getId());
			
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
	
	public ArrayList<StudentDTO> list(){ // selectAll()
	  	
	  	ArrayList<StudentDTO> list = new ArrayList<StudentDTO>();
	  	
	  	Connection conn = null;
	  	PreparedStatement pstmt = null;
	  	ResultSet rs = null;
	  	
	  	String sql = "SELECT * FROM student";
	  	
	  	conn = getConnection();
	  	
	  	try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
				
					StudentDTO dto = new StudentDTO();
					dto.setId(rs.getString("id"));
					dto.setPw(rs.getString("pw"));
					dto.setName(rs.getString("name"));
					dto.setGrade(rs.getString("grade"));
					dto.setDate(rs.getTimestamp("reg_date"));
					
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
	
	public int confirmId(String id) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select id from student where id = ?";
		
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
	
	public int check(String id, String password) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select pw from student where id = ?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //아이디 존재함
				String dbPassword = rs.getString("pw");
				
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
}
