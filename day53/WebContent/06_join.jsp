<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.tjoeun.jsp.model.MemberDAO"  %>    
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
  <!-- dto.setId(request.setParameter("id")); -->
  <!-- dto.setPassword(request.setParameter("password")); -->
  <!-- dto.setName(request.setParameter("name")); -->
  <jsp:setProperty name="dto" property="*" /> 
  <%-- 
  <set:Property name="dto" property="id" value="id"/>
  <set:Property name="dto" property="passoword" value="passoword"/>
  <set:Property name="dto" property="name" value="name"/>
  --%>
  <%
    MemberDAO dao = MemberDAO.getInstance();
    int result = dao.insert(dto);
    
    if(result >0){  // 회원가입이 잘 된 경우
      response.sendRedirect("06_loginForm.jsp");	
    }else{ // 회원 가입이 정상적으로 처리되지 않은 경우
   %>  	
      <script type="text/javascript">	
    	alert('회원가입 처리가 되지 않았습니다. 다시 작성해 주세요.');
    	history.go(-1);
      </script>
  <%    
    }
  %>
</body>
</html>







