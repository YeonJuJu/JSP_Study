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
  <form action="04_sLogin.jsp" method="post">
    <table border="1" cellpadding="10">
      <caption><h2>Session 로그인</h2></caption>
      <tr><th>아 이 디</th><td><input type="text" name="id" required></td></tr>
      <tr><th>비밀번호</th><td><input type="password" name="password" required></td></tr>
      <tr><td colspan="2" align="center"><input type="submit" value="로그인"> <button type="button" onClick="location.href='04_sJoinForm.jsp'">회원가입</button></td></tr>
    </table>
  </form>
</body>
</html>




