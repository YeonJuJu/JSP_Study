<%@page import="java.util.Enumeration"%>
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
  <h2>Session 에 저장된 속성이름, 속성값 확인하기</h2>
  <%
    Enumeration attributes = session.getAttributeNames();
    while(attributes.hasMoreElements()){
      String attributeName  = (String)attributes.nextElement();
      String attributeValue = (String)session.getAttribute(attributeName);
      out.println("Session의 속성이름 : " + attributeName + "<br>");
      out.println("Session의 속성값   : " + attributeValue + "<br>");
    }
  
  %>
  <br><hr><br>
  세션이름 : id<br>
  세 션 값 : <%=session.getAttribute("id") %><br>
  세션이름 : pw<br>
  세 션 값 : <%=session.getAttribute("pw") %><br>
</body>
</html>




