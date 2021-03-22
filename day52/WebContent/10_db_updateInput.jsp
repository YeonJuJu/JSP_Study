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
   	String deptno = request.getParameter("deptno");
   
  	String url = "jdbc:oracle:thin:@localhost:1521:xe";
  	String id = "scott2";
  	String pw = "1111";
  	String driver = "oracle.jdbc.driver.OracleDriver";
  	String sql = "";
  	
  	Connection conn = null;
  	Statement stmt = null;
  	ResultSet rs = null;
  	
  	Class.forName(driver);
  	conn = DriverManager.getConnection(url, id, pw);
  	
  	stmt = conn.createStatement();
  	sql = "select * from dept where deptno = " + deptno;
  	rs = stmt.executeQuery(sql);
  %>
  	<h2>부서 정보 수정하기</h2>
  	
  	<form action="10_db_updateProc.jsp">
  		부서번호 : <%=rs.getInt(1)%>
  		<input type = "hidden" name="deptno" value="<%=rs.getInt(1)%>"><br>
  		부서이름 : <input type = "text" name="dname" value="<%=rs.getString(2)%>"><br>
  		부서위치 : <input type = "text" name="loc" value="<%=rs.getString(3)%>"><br>
  		
  		<input type="submit" value="수정하기">
  		<input type="reset" value="다시입력">
    	<input type="button" value="이전페이지" onClick="history.go(-1);">
  	</form>
  <%
  	if( rs != null) {rs.close();}
	if( stmt != null) {stmt.close();}
	if( conn != null) {conn.close();}
  %>	
</body>
</html>