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
  <h2>회원가입</h2>
  <form action="02_agreement.jsp" method="post">
    아 이 디 : <input type="text" name="id" required autofocus><br>
    비밀번호 : <input type="password" name="pw" required ><br>
    이 &nbsp;&nbsp; 름 : <input type="text" name="name" required ><br>
    <br>
    <input type="submit" value="입력완료"> 
    <input type="reset" value="다시입력">
  </form>
</body>
</html>








