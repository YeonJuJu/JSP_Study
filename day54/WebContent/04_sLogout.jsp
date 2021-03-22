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
    session.invalidate();
  %>
  <h2>Session 로그아웃 페이지</h2>
  <script type="text/javascript">
    alert("로그아웃하셨습니다");
    location.href="04_sMain.jsp";
  </script>
</body>
</html>


