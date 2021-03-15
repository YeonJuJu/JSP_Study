<%@page import="java.sql.*"%>
<%@page import="com.tjoeun.jsp.model.StudentDTO"%>
<%@page import="java.util.ArrayList"%>
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
    String  id = "tjoeun";
    String  pw = "1111";
    String  driver = "oracle.jdbc.driver.OracleDriver";
    String  sql = "";
    String  check = "";
    
    ArrayList<StudentDTO> list = new ArrayList<>();
    
    Connection conn = null;
    Statement  stmt = null;
    ResultSet    rs = null;
    
    Class.forName(driver);
    conn = DriverManager.getConnection(url, id, pw);
    
    stmt = conn.createStatement();
    sql = "select * from student";
    rs = stmt.executeQuery(sql);
    
    if(rs.next()){
    	do{
    		StudentDTO dto = new StudentDTO();
    		dto.setStudno(rs.getInt("studno"));
    		dto.setName(rs.getString("name"));
    		dto.setGrade(rs.getString("grade"));
    		dto.setTel(rs.getString("tel"));
    		list.add(dto);
    	}while(rs.next());
    	check = "ok";
    }else{
    	check = "no";
    }
    
    request.setAttribute("list", list);
    request.setAttribute("check", check);
    
  %>
  <%-- <jsp:forward page="01_db_studentView.jsp" /> --%>
  <jsp:forward page="01_db_studentView2.jsp" />
</body>
</html>





