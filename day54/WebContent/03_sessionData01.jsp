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
    session.setAttribute("name", "이순신");
    session.setAttribute("age", new Integer(22));
    session.setAttribute("gender", "여");
  %>
  <h2>Session 데이터 저장하기</h2>
   Session 데이터가 저장됨<br><br>
  <button type="button" onClick="location.href='03_sessionData02.jsp'">Session 데이터 읽기</button> 
</body>
</html>


04_sLoginForm.jsp

