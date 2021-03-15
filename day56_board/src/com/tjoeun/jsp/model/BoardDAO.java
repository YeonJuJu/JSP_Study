package com.tjoeun.jsp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class BoardDAO {
	private static BoardDAO dao;
	
	private BoardDAO() {};
	
	public static BoardDAO getInstance() {
		if(dao==null) {
			dao = new BoardDAO();
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
	
	//게시글 수 가져오기
	public int getTotal() {
		int total = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select count(*) from board1";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			total = rs.getInt(1);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs==null) {rs.close();}
				if(pstmt==null) {pstmt.close();}
				if(conn==null) {conn.close();}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return total;
	}
	
	//글목록 가져오기
	public List<BoardDTO> selectList(int startRow, int endRow){
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from (select rownum rn, b.* from (select * from board1 order by reg_date desc) b) where rn between 1 and 10";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNum(rs.getInt("num"));
				dto.setWriter(rs.getString("write"));
				dto.setSubject(rs.getString("subject"));
				dto.setEmail(rs.getString("email"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setPasswd(rs.getString("passwd"));
				dto.setRef(rs.getInt("ref"));
				dto.setRe_step(rs.getInt("re_step"));
				dto.setRe_level(rs.getInt("re_level"));
				dto.setIp(rs.getString("ip"));
				dto.setReg_date(rs.getTimestamp("reg_date"));
				dto.setDel(rs.getString("del"));
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs==null) {rs.close();}
				if(pstmt==null) {pstmt.close();}
				if(conn==null) {conn.close();}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return list;
	}
	
	//게시글 등록하기
	public int insert(BoardDTO dto) {
		int result = 0;
		int number = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// 1) 현재 테이블의 최대 게시글 번호 구하기
		String sql1 = "SELECT MAX(NUM) FROM BOARD1";
				
		// 2) INSERT INTO BOARD1
		String sql2 = "INSERT INTO BOARD1 VALUES(?,?,?,?,?,0,?,?,?,?,?, SYSDATE, 'N')";
				
		// 3) 답변글 관련 컬럼값 설정
		String sql3 = "UPDATE BOARD1 SET RE_STEP = RE_STEP + 1 WHERE REF = ? AND  RE_STEP > ?";
				
		int num = dto.getNum();
				
		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement(sql1);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				number = rs.getInt(1);
			}
			
			num+=1;
			pstmt.close();
			
			if(num != 0) {
				pstmt = conn.prepareStatement(sql3);
				pstmt.setInt(1, dto.getRef());
				pstmt.setInt(2, dto.getRe_step());
				pstmt.executeUpdate();
				pstmt.close();
				
				dto.setRe_level(dto.getRe_level()+1);
				dto.setRe_step(dto.getRe_step()+1);
			}else {
				dto.setRef(number);
			}
			
			pstmt = conn.prepareStatement(sql3);
			
			pstmt.setInt(1, number);
			pstmt.setString(2, dto.getWriter());
			pstmt.setString(3, dto.getSubject());
			pstmt.setString(4, dto.getContent());
			pstmt.setString(5, dto.getEmail());
			pstmt.setString(6, dto.getPasswd());
			pstmt.setInt(7, dto.getRef());
			pstmt.setInt(8, dto.getRe_step());
			pstmt.setInt(9, dto.getRe_level());
			pstmt.setString(10, dto.getIp());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs==null) {rs.close();}
				if(pstmt==null) {pstmt.close();}
				if(conn==null) {conn.close();}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	//글 하나 조회하기
	public BoardDTO select(int num) {
		BoardDTO dto = new BoardDTO();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from board1 where num=?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				dto.setNum(rs.getInt("num"));
				dto.setWriter(rs.getString("write"));
				dto.setSubject(rs.getString("subject"));
				dto.setEmail(rs.getString("email"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setPasswd(rs.getString("passwd"));
				dto.setRef(rs.getInt("ref"));
				dto.setRe_step(rs.getInt("re_step"));
				dto.setRe_level(rs.getInt("re_level"));
				dto.setIp(rs.getString("ip"));
				dto.setReg_date(rs.getTimestamp("reg_date"));
				dto.setDel(rs.getString("del"));
			
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs==null) {rs.close();}
				if(pstmt==null) {pstmt.close();}
				if(conn==null) {conn.close();}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return dto;
	}
	
	// 조회수 업데이트
	public int updateCount(int num) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "update board1 set readcount = readcount+1 where num = ?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(pstmt==null) {pstmt.close();}
				if(conn==null) {conn.close();}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	// 게시글 수정 - 기존의 내용을 변경
	public int update(BoardDTO dto) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "update board1 set writer=?, subject=?, content=?, email=?, passwd=?, ip=? where num = ?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getWriter());
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getPasswd());
			pstmt.setString(6, dto.getIp());
			
			pstmt.setInt(7, dto.getNum());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(pstmt==null) {pstmt.close();}
				if(conn==null) {conn.close();}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public int delCheck(int num, String inputPasswd) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select passwd from board1 where num=?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String dbPasswd = rs.getString("passwd");
				
				if(inputPasswd.contentEquals(dbPasswd)) {
					result = 1;
				}
				else {
					result = 0;
				}
			}
			else {
				result = -1;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs==null) {rs.close();}
				if(pstmt==null) {pstmt.close();}
				if(conn==null) {conn.close();}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public int delete(int num) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		/* String sql = "delete from board1 where num=?"; */
		String sql = "update board1 set del='Y' where num = ?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(pstmt==null) {pstmt.close();}
				if(conn==null) {conn.close();}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}
}
