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

  <table border="1" bgcolor="#ffffdd"><tr>
    <%
    Context ctx = new InitialContext();
    DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
    Connection conn = ds.getConnection();
    Statement stmt = conn.createStatement();
    String sql = "select * from dept";
    ResultSet rs = stmt.executeQuery(sql);
    ResultSetMetaData rsmd = rs.getMetaData();
    for(int i = 1; i <= rsmd.getColumnCount(); i++){
     out.println("<th>" + rsmd.getColumnName(i) + "</th>")	;
    }
    while(rs.next()){
      out.println("</tr><tr>");
      for(int i = 1; i <= rsmd.getColumnCount(); i++){
  %>
        <td><%=rs.getString(i) %></td> 	
  <%   	
      }
      out.println("</tr>");
    }
  %>  
  </table>
</body>
</html>


