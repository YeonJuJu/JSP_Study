<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
		String url ="jdbc:oracle:thin:@localhost:1521:xe";
		String id = "scott2";
		String pw = "1111";
		String driver = "oracle.jdbc.driver.OracleDriver";
		
		Class.forName(driver);
		
		Connection conn = DriverManager.getConnection(url, id, pw);
	
		if(conn!=null){
			out.println("DB connected");
		}else{
			out.println("DB disconnected");
		}
		
		conn.close();
	%>  
</body>
</html>