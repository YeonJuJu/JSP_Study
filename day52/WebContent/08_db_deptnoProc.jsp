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
	
		// colmns -> deptno, dname, loc
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
	  	String id = "scott2";
	  	String pw = "1111";
	  	String driver = "oracle.jdbc.driver.OracleDriver";
	  	
	  	Class.forName(driver);
	  	
	  	Connection conn = DriverManager.getConnection(url, id, pw);
	  	Statement stmt = null;
	  	ResultSet rs = null;
	  	String sql = "";
	  	
	  	if(conn != null){ System.out.println("DB Connected!");}
	  	else{ System.out.println("DB Disconnected!");}
	  	
	  	stmt = conn.createStatement();
	  	
	  	sql = "select * from dept where deptno = " + deptno ;
	
	  	rs = stmt.executeQuery(sql);
	  	
	  	while(rs.next()){
	  		int dno = rs.getInt(1);
	  		String dname = rs.getString(2);
	  		String loc = rs.getString(3);
	  		
	  		out.println(dno + " " + dname + " " + loc + "<br>");
	  	
	  		request.setAttribute("deptno", deptno);
	  		request.setAttribute("dname", dname);
	  		request.setAttribute("loc", loc);
	  	}
	  	
	  	if(rs != null){rs.close();}
	  	if(stmt != null){stmt.close();}
	  	if(conn != null){conn.close();}
	%> 
	
	<jsp:forward page='08_db_deptnoResult.jsp'/>
</body>
</html>