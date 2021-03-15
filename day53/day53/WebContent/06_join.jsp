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
  <jsp:useBean class="com.tjoeun.jsp.model.MemberDTO" id="dto"/>
  <!-- dto.setName(request.setParameter("name")); -->
  <jsp:setProperty name="dto" property="*" />
</body>
</html>


