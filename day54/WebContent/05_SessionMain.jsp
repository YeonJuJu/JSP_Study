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
    if(session.getAttribute("id") == null){
      response.sendRedirect("05_SessionLogout.jsp");
    }
  %>
  <h2>Session 로그인 성공</h2>
  <%=session.getAttribute("id") %> 님, 환영합니다.<br><br>
  <button type="button" onClick="location.href='05_SessionLogout.jsp'">로그아웃</button>
</body>
</html>





