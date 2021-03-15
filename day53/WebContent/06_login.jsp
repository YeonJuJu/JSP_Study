<%@page import="com.tjoeun.jsp.model.MemberDAO"%>
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
    String password = request.getParameter("password");
    
    MemberDAO dao = MemberDAO.getInstance();
    int result = dao.check(id, password); // 1, 0, -1
    
    // 회원가입할 때 등록한 id, password하고
	// 로그인하면서 입력한 id, password가 같음
    if(result == 1){ 
      // 로그인에 성공했으므로 cookie를 생성함
      Cookie cookie = new Cookie("id", id);
      response.addCookie(cookie);
      response.sendRedirect("main.jsp");
    }
    
    
    
  %>
</body>
</html>










