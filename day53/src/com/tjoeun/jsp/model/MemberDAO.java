package com.tjoeun.jsp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

// DAO : DataBase Access Object
public class MemberDAO {
  // Singleton Design Pattern : 
	// 객체를 하나만 생성해서 사용하는 Design Pattern
	private static MemberDAO dao;
	// 생성자를 private으로 작성함 : definition
	private MemberDAO() { }
	// MemberDAO의 객체를 생성하는 
	// 메소드를 static으로 작성함
	// MemberDAO.getInstance();
	public static MemberDAO getInstance() {
		if(dao == null) {
		  dao = new MemberDAO();
		}
		return dao;
	}
	
	// 데이터베이스에 연결하기 <-- Connection 객체를 생성하기
	// Connection Pool 방식
	private Connection getConnection() {
		Connection conn = null;
		
		try {
			Context ctx = new InitialContext();
			DataSource ds 
			  = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	// insert sql 실행하기
	// DML : executeUpdate()
	public int insert(MemberDTO dto) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO MEMBER1 VALUES(?, ?, ?, SYSDATE)";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getName());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) {pstmt.close();}
				if(conn != null) {conn.close(); System.out.println("DB Disconnected...");}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	} // insert
	
	// 로그인하면서 입력한 id, password 가
	// DataBase에 있는지 check하기 : select sql
	public int check(String id, String password) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT PASSWORD FROM MEMBER1 WHERE ID=?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			// rs.getString(1) : 회원가입할 때 DataBase에 저장된 password
			// 매개변수 String password : 로그인하면서 입력한 password
			if(rs.next()) {
			  // 회원가입할 때 등록한 id 하고
				// 로그인하면서 입력한 id 가 같음
				
				if(rs.getString(1).equals(password)) {
					// 회원가입할 때 등록한 password하고
					// 로그인하면서 입력한 password가 같음
					result = 1;
				}else { // 로그인하면서 입력한 password가 다름
					// 비밀번호를 잘못 입력한 경우
					result = 0;
				}
			}else { // 로그인하면서 입력한 id가 DataBase에 없는 경우
				result = -1;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {rs.close();}
				if(pstmt != null) {pstmt.close();}
				if(conn != null) {conn.close(); System.out.println("DB Disconnected..");}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	  return result;
	  
	} // check
	
	
}












