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
  <h2>Session 데이터 읽기</h2>
  이름 : <%=session.getAttribute("name") %><br>
  나이 : <%=session.getAttribute("age") %><br>
  성별 : <%=session.getAttribute("gender") %><br>
</body>
</html>





