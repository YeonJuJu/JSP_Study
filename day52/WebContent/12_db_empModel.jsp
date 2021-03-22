<%@page import="com.tjoeun.jsp.model.EmpDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
</head>
<body>
  <%
	  	String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "scott2";
		String pw = "1111";
		String driver = "oracle.jdbc.driver.OracleDriver";
		String sql = "";
		
		ArrayList<EmpDto> list = new ArrayList<>();
		String check = "";
		
		Class.forName(driver);
		
		Connection conn = DriverManager.getConnection(url, id, pw);
		Statement stmt = null;
		ResultSet rs = null;
	
		if(conn != null){ System.out.println("DB Connected!");}
		else{ System.out.println("DB Disconnected!");}
		
		stmt = conn.createStatement();
		
		sql = "select * from emp";
	
		rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			check = "ok";
			do{
				EmpDto dto = new EmpDto();
				
				dto.setEmpno(rs.getInt("empno"));
				dto.setEname(rs.getString("ename"));
				dto.setJob(rs.getString("job"));
				dto.setSal(rs.getInt("sal"));
				
				list.add(dto);
			}while(rs.next());
		}
		else{
			check = "no";
		}
		
		request.setAttribute("list", list);
		request.setAttribute("check", check);
		
		if(rs != null){rs.close();}
		if(stmt != null){stmt.close();}
		if(conn != null){conn.close();}
  %>
  
  		<jsp:forward page="12_db_empView.jsp"/>
</body>
</html>