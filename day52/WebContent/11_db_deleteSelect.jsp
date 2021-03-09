<%@page import="java.sql.*" %>
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
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String  id = "scott2";
    String  pw = "1111";
    String  driver = "oracle.jdbc.driver.OracleDriver";
    String  sql = "";
    
    Connection conn = null;
    Statement  stmt = null;
    ResultSet    rs = null;
    
    Class.forName(driver);
    conn = DriverManager.getConnection(url, id, pw);
    
    stmt = conn.createStatement();
    sql  = "select deptno from dept";
    rs = stmt.executeQuery(sql);
    
  %>  
    <h2>삭제하고자 하는 부서번호 선택하기</h2>
      <form action="11_db_deleteProc.jsp">
        <select name="deptno">
  <%  
          while(rs.next()){
            out.println("<option>" + rs.getInt(1) + "</option>");
          }
  %>
        </select>
        <input type="submit" value="선택하기">
      </form>
  <%
    if(rs != null) { rs.close(); }
    if(stmt != null) { stmt.close(); }
    if(conn != null) { conn.close(); }
  %>  

</body>
</html>





