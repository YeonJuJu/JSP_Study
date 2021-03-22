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
  <jsp:useBean id="dto" class="com.tjoeun.jsp.model.MemberDTO" />
  <jsp:setProperty name="dto" property="*" />
  
  <%
    System.out.println(dto.getId());
    MemberDAO dao = MemberDAO.getInstance();
    
    int result = dao.check(dto.getId(), dto.getPassword());
    
    if(result == 1){
      session.setAttribute("id", dto.getId());
      response.sendRedirect("04_sMain.jsp");
      
    }else if(result == 0){
  %>
    <script type="text/javascript">
      alert("비밀번호를 다시 입력해 주세요");
      history.back();
    </script>
  <%  	
    }else{
  %>
    <script type="text/javascript">
      alert("입력하신 아이디가 없습니다");
      location.href="04_sLoginForm.jsp";
    </script>
  <%  	
    }
  %>
  
</body>
</html>



