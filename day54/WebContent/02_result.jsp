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
    String result = request.getParameter("result");
    if(result.equals("s")){
      out.println("<font color='red' size='5'>회원가입을 축하합니다</font>");
    }else if(result.equals("n")){
      out.println("<font color='red' size='5'>약관에 동의해 주세요</font>");	
    }else{
      out.println("<font color='red' size='5'>절차를 지켜주세요</font>");	
    }
  %> 
  <br><br>
  <button type="button" onClick="location.href='02_personReg.jsp'">회원가입페이지로</button>
</body>
</html>



