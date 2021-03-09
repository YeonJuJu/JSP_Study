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
	<h2>사원 정보를 검색하고자 하는 부서 번호 선택하기</h2>

	<form action="07_db_empList.jsp">
		<select name="deptno" id="deptno">
   
   <%
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
  	
  	sql = "select distinct deptno from emp order by deptno asc";
  	rs = stmt.executeQuery(sql);
  	
  	while(rs.next()){
  		int deptno = rs.getInt(1);
  	%>
  		<option value=<%=deptno%>><%=deptno %></option>
  	<%
  		/* out.println("<option>" + deptno + "</option>"); */
  	}
  	
  	if(rs != null){rs.close();}
  	if(stmt != null){stmt.close();}
  	if(conn != null){conn.close();}
  	
  %>
	  </select><br>
	  <input type="submit" value="검색">
  </form>
</body>
</html>