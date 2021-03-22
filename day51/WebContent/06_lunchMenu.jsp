<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
</head>
<body>
  <% 
  	String[] menus = {"국밥", "오므라이스", "스테이크", "볶음밥"};
  	request.setAttribute("menus", menus);	
  %>
  
  <jsp:forward page="06_lunchmenuView.jsp"/>
</body>
</html>