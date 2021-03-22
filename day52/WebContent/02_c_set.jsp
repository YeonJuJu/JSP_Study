<%@page import="java.util.ArrayList"%>
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
  	ArrayList<String> listAnimals = new ArrayList<>();
  
  	listAnimals.add("호랑이");
  	listAnimals.add("고양이");
  	listAnimals.add("사자");
  	listAnimals.add("강아지");
  	listAnimals.add("코알라");
  	listAnimals.add("팬더");
  	
  	request.setAttribute("animals", listAnimals);
  	
  	//RequestDispatcher("02_c_set02.jsp").forward(requestm response);
  %>
  
  <jsp:forward page="02_c_set02.jsp"/>
</body>
</html>