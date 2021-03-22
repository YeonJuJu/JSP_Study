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
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    
    if(id.equals("tjoeun") && password.equals("1111")){
      session.setAttribute("id", id);
    }
    response.sendRedirect("05_SessionMain.jsp");
  %>
</body>
</html>



