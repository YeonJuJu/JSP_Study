<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>    
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
    String id = "id";
    String value = "더조은";
    Cookie cookie = new Cookie(id, value);
    /* Cookie cookie = new Cookie(id, URLEncoder.encode(value, "UTF-8")); */
    // cookie.setValue("academy");
    cookie.setMaxAge(10); // 쿠키 유효시간 (생성 후 없어지는 시간) : 10초
    response.addCookie(cookie);
  %>
  쿠키가 저장되었습니다.<br><br>
  <button type="button" onClick="location.href='05_useCookie.jsp'">쿠키보기</button>
  <!-- <a href="05_useCookie.jsp">쿠키보기</a> -->
</body>
</html>














