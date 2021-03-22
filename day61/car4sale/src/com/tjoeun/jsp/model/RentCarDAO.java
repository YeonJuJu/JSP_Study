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

public class RentCarDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
  // RentCarDAO type의 멤버변수 선언
	//   ㄴ private static
	private static RentCarDAO instance;
	
	// 생성자를 private으로 정의
	private RentCarDAO() { }
	
	// getInstance()
	// public static 
	// RentCarDAO의 객체가 생성되지 않은 경우에만
	// RentCarDAO의 객체를 생성하기
	// return type --> RentCarDAO
	public static RentCarDAO getInstance() {
		if(instance == null) {
			instance = new RentCarDAO();
		}
		return instance;
	}
	
	// getConnection() 메소드 작성
	// private
	// DB에 연결하기 : Connection 객체 생성
	// return type : Connection
	private void getConnection() {
		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 한 화면에 최신 등록 자동차 3 개 보여줌
	public ArrayList<RentCarDTO> selectCarList(){
		
		ArrayList<RentCarDTO> list = new ArrayList<RentCarDTO>();
		String sql = "SELECT * FROM RENTCAR ORDER BY NO DESC";
		
		getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs    = pstmt.executeQuery();
			
			int count = 0;
			while(rs.next()) {
				// ResultSet 에 저장된 data들을
				// DTO 객체에 저장하기
				RentCarDTO dto = new RentCarDTO();
				dto.setNo(rs.getInt(1));
				dto.setName(rs.getString(2));
				dto.setCategory(rs.getInt(3));
				dto.setPrice(rs.getInt(4));
				dto.setPassenger(rs.getInt(5));
				dto.setCompany(rs.getString(6));
				dto.setImg(rs.getString(7));
				dto.setInfo(rs.getString(8));
				list.add(dto);
				
				count++;
				if(count >= 3) {
					break;
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) { rs.close(); }
				if(pstmt != null) { pstmt.close(); }
				if(conn != null) { conn.close(); }
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return list;
		
	}

	
	// Category 별로 자동차 정보 가져오기
	public ArrayList<RentCarDTO> selectCategoryCarList(int category){
		
		ArrayList<RentCarDTO> list = new ArrayList<RentCarDTO>();
		String sql = "SELECT * FROM RENTCAR WHERE CATEGORY=?";
		
		getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, category);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
			  // ResultSet 에 저장된 data들을
				// DTO 객체에 저장하기
				RentCarDTO dto = new RentCarDTO();
				dto.setNo(rs.getInt(1));
				dto.setName(rs.getString(2));
				dto.setCategory(rs.getInt(3));
				dto.setPrice(rs.getInt(4));
				dto.setPassenger(rs.getInt(5));
				dto.setCompany(rs.getString(6));
				dto.setImg(rs.getString(7));
				dto.setInfo(rs.getString(8));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) { rs.close(); }
				if(pstmt != null) { pstmt.close(); }
				if(conn != null) { conn.close(); }
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return list;
	} // selectCategoryCarList
	
	// 전체 차량 목록 가져오기
	public ArrayList<RentCarDTO> selectAllCarList(){
		ArrayList<RentCarDTO> list = new ArrayList<RentCarDTO>();
		
		return list;
	}
	
	// 차량 하나의 정보 가져오기
	// 메소드 이름과 매개변수 : getOneCar(int no)
	// return type : RentCarDTO
	public RentCarDTO getOneCar(int no) {
		RentCarDTO dto = new RentCarDTO();
		String sql = "SELECT * FROM RENTCAR WHERE NO=?";
		
		getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setNo(rs.getInt(1));
				dto.setName(rs.getString(2));
				dto.setCategory(rs.getInt(3));
				dto.setPrice(rs.getInt(4));
				dto.setPassenger(rs.getInt(5));
				dto.setCompany(rs.getString(6));
				dto.setImg(rs.getString(7));
				dto.setInfo(rs.getString(8));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) { rs.close(); }
				if(pstmt != null) { pstmt.close(); }
				if(conn != null) { conn.close(); }
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return dto;
	}
	
	// 선택한 옵션 내용을 DB에 저장하기
	// 메소드 이름과 매개변수 : setOptionDTO(OptionDTO dto);
	// return type : void
	public void setOptionDTO(OptionDTO dto) {
		
		getConnection();
		String sql = "INSERT INTO OPTIONDTO VALUES(RESERVENO_SEQ.NEXTVAL,?,?,?,?,?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setInt(2, dto.getNo());
			pstmt.setInt(3, dto.getQuantity());
			pstmt.setInt(4, dto.getDays());
			pstmt.setString(5, dto.getRentdate());
			pstmt.setInt(6, dto.getInsurance());
			pstmt.setInt(7, dto.getWifi());
			pstmt.setInt(8, dto.getNavigation());
			pstmt.setInt(9, dto.getBabyseat());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) { pstmt.close(); }
				if(conn != null) { conn.close(); }
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} 
		
	} // setOptionDTO
	
	public int selectIdPw(String id, String pw) {
		
		String sql = "select count(*) from member4 where id=? and pw=?";
		
		int result = 0;
		
		getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);

			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) { rs.close(); }
				if(pstmt != null) { pstmt.close(); }
				if(conn != null) { conn.close(); }
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public ArrayList<ReserveListDTO> selectReserveListbyId(String id){
		ArrayList<ReserveListDTO> list = new ArrayList<>();
		
		String sql = "select * from rentcar natural join optiondto where id=?";
		
		getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ReserveListDTO dto = new ReserveListDTO();
				
				dto.setReserveno(rs.getInt("no"));
				dto.setName(rs.getString("name"));
				dto.setPrice(rs.getInt("price"));
				dto.setImg(rs.getString("img"));
				dto.setQuantity(rs.getInt("quantity"));
				dto.setDays(rs.getInt("days"));
				dto.setRentdate(rs.getString("rentdate"));
				dto.setInsurance(rs.getInt("insurance"));
				dto.setWifi(rs.getInt("wifi"));
				dto.setNavigation(rs.getInt("navigation"));
				dto.setBabyseat(rs.getInt("babyseat"));
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) { rs.close(); }
				if(pstmt != null) { pstmt.close(); }
				if(conn != null) { conn.close(); }
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return list;
	}
	
	public void deleteReserve(int reserveno) {
		String sql = "delete from optiondto where reserveno = ?";
		
		getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, reserveno);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) { pstmt.close(); }
				if(conn != null) { conn.close(); }
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
}




