<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
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
     Context ctx = new InitialContext();
     DataSource ds 
       = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
     Connection conn = ds.getConnection();
     if(conn != null){
       out.println("<h1>DB 연결 성공</h1>");
       System.out.println("DB Connected !!")	 ;
     }else{
       out.println("<h1>DB 연결 실패</h1>");	 
       System.out.println("DB not Connected !!");
     }
  %>
</body>
</html>



