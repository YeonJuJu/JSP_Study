<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
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
  <table border="1" bgcolor="#ffffdd" cellpadding="5">
    <caption><h2>직원명단</h2></caption>
    <tr>
      <%
        Context ctx = new InitialContext();
        DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
        Connection conn = ds.getConnection();
        
        String sql 
          = "SELECT EMPNO 사번, ENAME 이름, SAL 급여, JOB 업무, DNAME 부서명 FROM EMP, DEPT WHERE EMP.DEPTNO = DEPT.DEPTNO";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        ResultSetMetaData rsmd = rs.getMetaData();
        
        for(int i = 1; i <= rsmd.getColumnCount(); i++){
          out.println("<th>" + rsmd.getColumnName(i) + "</th>")	;
        }
        while(rs.next()){
          out.println("</tr><tr>");
          for(int i = 1; i <= rsmd.getColumnCount(); i++){
          	if(i == 3){
      %>
              <td><%=rs.getInt(i) %></td>
      <%    		
          	}else{
      %>
            <td><%=rs.getString(i) %></td>
      <%    	
          	}
          }
        	out.println("</tr>");
        }
        if(rs != null) { rs.close(); }
        if(pstmt != null) { pstmt.close(); }
        if(conn != null) { conn.close(); }
      %>
    </tr>
  </table>
</body>
</html>






