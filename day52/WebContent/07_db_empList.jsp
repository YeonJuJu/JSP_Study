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
  <h2>직원 명단</h2>
  
  <%
  	String deptno = request.getParameter("deptno");
  
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
  	
  	sql = "select * from emp";
  	
  	if(deptno != null && !deptno.equals("")){
  		sql += " where deptno=" + deptno;
  	}
  	else{
  		out.println("<span color='red'>부서코드가 확인되지 않으면 전체 직원 리스트가 출력됩니다.</span>");
  	}
  	
  	rs = stmt.executeQuery(sql);
  	
  	if(rs.next()){
  		out.println("<table border='1' bgcolor='ffffdd' cellspacing='5'><tr><th>사원번호</th><th>사원이름</th><th>직급</th><th>사수번호</th><th>고용날짜</th><th>급여</th><th>보너스</th><th>부서번호</th></tr>");
  		while(rs.next()){
  	  		int empno = rs.getInt(1);
  	  		String ename = rs.getString(2);
  	  		String job = rs.getString(3);
  	  		int mgr = rs.getInt(4);
  	  		String hiredate = rs.getString(5);
  	  		int sal = rs.getInt(6);
  	  		int comm = rs.getInt(7);
  	  		int dno = rs.getInt(8);
  	  		
  	  		System.out.println(empno + " : " + ename + " : " + job + " : " + mgr + " : " + hiredate + " : " + sal + " : " + comm + " : " + dno);
  	  	    
  	  		out.println("<tr><td>" + empno + "</td><td>" + ename + "</td><td>" + job + "</td><td>" + mgr + "</td><td>" + hiredate + "</td><td>" + sal + "</td><td>" + comm + "</td><td>" + dno + "</td></tr>");
  	  	}
  		out.println("</table><br>");
  	}
  	else{
  		out.println("No Data...");
  	}
  	
  	if(rs != null){rs.close();}
  	if(stmt != null){stmt.close();}
  	if(conn != null){conn.close();}
  	
  	if(deptno == null){
  	
  %>
  	<input type="button" value="이전 페이지" onclick="history.go(-1);">
  	
  <%
  	}
  %>
</body>
</html>