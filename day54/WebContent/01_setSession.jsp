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
  <h2>Session 사용하기</h2>
  <%
    String id = "tjoeun";
    String pw = "1234";
    
    session.setAttribute("id", id);
    session.setAttribute("pw", pw);
  %>
  Session (데이터저장객체) 에 id과 pw를 저장함<br>
  
  <input type="button" value="Session에 설정된 속성 확인하기"
         onClick="location.href='01_veiwSession.jsp'" >
</body>
</html>






