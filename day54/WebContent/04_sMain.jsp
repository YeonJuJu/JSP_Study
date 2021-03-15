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
  <h2>Session 로그인 성공</h2>
  <%
    String id = (String)session.getAttribute("id");
    if(id != null || id.equals("")){
      response.sendRedirect("04_sLoginForm.jsp");
    }
  %>
  <h1><%=id %> 님, 환영합니다 !!</h1><br>
  <button type="button" onClick="location.href='04_sLogout.jsp'" >Session 로그아웃</button>
</body>
</html>



