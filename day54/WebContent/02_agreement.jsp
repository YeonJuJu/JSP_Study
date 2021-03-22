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
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    
    session.setAttribute("id", id);
    session.setAttribute("pw", pw);
    session.setAttribute("name", name);
    
  %>
  <h2>약관 동의</h2>
  ------------------------------------------------------------<br>
  1. 회원 정보는 웹 사이트의 운영을 위해서만 사용됩니다.<br>
  2. 웹 사이트의 정상 운영을 방해하는 회원을 탈퇴 처리합니다.<br>
  ------------------------------------------------------------<br>
  
  <fieldset>
    <legend>약 관 동 의</legend>
    <form action="02_subscribe.jsp" >
      <label for="m1">동의</label>
      <input type="radio" name="agree" value="y" id="m1">
      <label for="m2">거부</label>
      <input type="radio" name="agree" value="n" id="m2" checked>
      <input type="submit" value="확인" >      
    </form>
  </fieldset>
  
</body>
</html>




