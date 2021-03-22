<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
  <style>
    body{font-family:D2Coding;}
  </style>  
</head>
<body>
  <%
    int deptno = Integer.parseInt(request.getParameter("deptno"));
  
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String  id = "scott2";
    String  pw = "1111";
    String driver = "oracle.jdbc.driver.OracleDriver";
    String sql = "";
    
    Connection conn = null;
    PreparedStatement  pstmt = null;
    
    Class.forName(driver);
    conn = DriverManager.getConnection(url, id, pw);
    
    sql = "delete from dept where deptno=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, deptno);
    int result = pstmt.executeUpdate();
    
    if(result > 0){
    	out.println("삭제 성공");
    }else{
    	out.println("삭제 실패");
    }
    
    if(pstmt != null) { pstmt.close(); }
    if(conn != null) { conn.close(); }
    
  %>  
</body>
</html>



