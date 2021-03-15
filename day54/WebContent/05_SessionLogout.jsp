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
    // Session 데이터 삭제하기
    session.invalidate();
  %>
   <script type="text/javascript">
    alert('로그아웃하셨습니다');
    // 로그인 페이지로 이동
    location.href="05_SessionLoginForm.jsp";
  </script>
</body>
</html>


