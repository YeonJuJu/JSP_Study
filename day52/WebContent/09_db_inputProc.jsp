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
		// colmns -> deptno, dname, loc
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
	  	String id = "scott2";
	  	String pw = "1111";
	  	String driver = "oracle.jdbc.driver.OracleDriver";
	  	
	  	Class.forName(driver);
	  	
	  	Connection conn = DriverManager.getConnection(url, id, pw);
	  	PreparedStatement pstmt = null;
	  	String sql = "";
	  	
	  	if(conn != null){ System.out.println("DB Connected!");}
	  	else{ System.out.println("DB Disconnected!");}
	  	
	  	sql = "insert into dept values (?, ?, ?)";
	  	
	  	pstmt = conn.prepareStatement(sql);
	  	
	  	pstmt.setString(1, request.getParameter("deptno"));
	  	pstmt.setString(2, request.getParameter("dname"));
	  	pstmt.setString(3, request.getParameter("loc"));
	  	
	  	int result = pstmt.executeUpdate();
	  	
	  	if(result > 0){
	  		out.println("입력 성공!");
	  	}
	  	else{
	  		out.println("입력 실패!");
	  	}
	  	
	  	if(pstmt != null){pstmt.close();}
	  	if(conn != null){conn.close();}
	%>  
</body>
</html>