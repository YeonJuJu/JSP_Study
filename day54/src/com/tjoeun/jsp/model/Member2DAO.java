package com.tjoeun.jsp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Member2DAO {
  private static Member2DAO dao;
  private Member2DAO() { }
  public static Member2DAO getInstance() {
  	if(dao == null) {
  		dao = new Member2DAO();
  	}
  	return dao;
  } // getInstance
  
  private Connection getConnection() {
  	Connection conn = null;
  	
  	try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
  	return conn;
  	
  } // getConnection
  
  // 회원가입할 때 
  // 사용자가 입력한 id가 DataBase에 있는지 없는지 알아보기 
  public int confirmId(String id) {
  	int result = 0;
  	
  	Connection conn = null;
  	PreparedStatement pstmt = null;
  	ResultSet rs = null;
  	
  	String sql = "SELECT ID FROM MEMBER2 WHERE ID=?";
  	
  	try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {  // DataBase에 등록된 아이디
				result = 1;
			}else {  // DataBase에 등록되지 않은 아이디
				result = 0;
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
  	
  	return result;
  } // confirmId
  
  // 회원 등록할 때 입력한 값을 DB에 저장하기 : insert
  public int insert(Member2DTO dto) {
  	int result = 0;
  	
  	Connection conn = null;
  	PreparedStatement pstmt = null;
  	
  	String sql = "INSERT INTO MEMBER2 VALUES(?, ?, ?, ?, ?, sysdate)";
    
  	conn = getConnection();
  	
  	try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPasswd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getAddress());
			pstmt.setString(5, dto.getTel());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if(pstmt != null) {pstmt.close();}
				if(conn != null) {conn.close(); System.out.println("DB Disconnected !!");}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
  	
  	return result;
  	
  } // insert
  
  
  // 로그인할 때 id와 password가 맞는지 알아보기
  public int check(String id, String passwd) {
  	// 실패하는 값으로 초기화해 놓기
  	int result = 0;
  	
  	Connection conn = null;
  	PreparedStatement pstmt = null;
  	ResultSet rs = null;
  	
  	String sql = "SELECT PASSWD FROM MEMBER2 WHERE ID=?";
  	
  	conn = getConnection();
  	
  	try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) { // 아이디가 DB에 있는 경우  
				 // String dBPasswd = rs.getString(1);
				 // if(dBPasswd.equals(passwd)) {
				 if(rs.getString(1).equals(passwd)) {
				    // 로그인 성공 : 아이디와 비밀번호가 맞는 경우
						result = 1;
				 }else {  // 아이디는 맞으나 비밀번호가 다름
						result = 0;
					}
			}else {
				// 입력한 아이디가 DB에 없는 경우
				result = -1;
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
  	
    return result;
  	
  }  // check
  
  
  // select 하는 메소드 (table에 있는 전체 record를 select 함)
  // 메소드 이름 : list
  // 매개변수    : 없음
  // return type : ArrayList<Member2DTO> 
  
  // select 하는 메소드 (특정 id 에 대한 record 하나만 select 함)
  // 메소드 이름 : select
  // 매개변수    : String id
  // return type : Member2DTO
  
  // update 하는 메소드
  // 메소드 이름 : update
  // 매개변수    : Member2DTO dto
  // return type : int
  
  // delete 하는 메소드
  // 메소드 이름 : delete
  // 매개변수    : String id
  // return type : int
 
  
  
}




