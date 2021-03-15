<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>      
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
  쿠키값(EL) : ${cookie.id.value }<br><br>
  <%
    Cookie[] cookies = request.getCookies();
   if(cookies == null){
  	 out.println("쿠키가 생성되지 않았음");
   }else{ 
  	 // 서버가 쿠키를 생성해서 클라이언트로 보낸 쿠키를
  	 // 클라이언트가 서버로 접속하면서 다시 보냄
  	 /*
  	 for(int i = 0; i <= cookies.length; i++ ) {
  	   
  	   if(cookies[i].getName().equals("id")){
  	  	 out.println("쿠키이름 : " + cookies[i].getName());
  	  	 out.println("쿠키 값  : " + cookies[i].getValue());
  	   }
  	   
  	 }
     */
     
     for(Cookie cookie : cookies){
	    	 out.println("쿠키이름 : " + cookie.getName() + "<br>");
		  	 out.println("쿠키 값  : " + cookie.getValue() + "<br>");
		  	 /* out.println("쿠키 값  : " + URLDecoder.decode(cookie.getValue()) + '<br>'); */
     }
     
  	 
  	 
   }
  
  %>
  
  
</body>
</html>




