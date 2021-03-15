<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
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
    String agree = request.getParameter("agree");
    String result = null;
    if(agree.equals("y")){
      try{ 	
        String id = (String)session.getAttribute("id");   
        String password = (String)session.getAttribute("password");   
        String name = (String)session.getAttribute("name");
      
        result = "s";
      }catch(Exception e){ 
      	result ="f"; 
      }
    }else if(agree.equals("n")){
      result = "n";	
    }
    // Session 삭제
    session.invalidate();
    response.sendRedirect("02_result.jsp?result=" + result);
  %>
</body>
</html>



