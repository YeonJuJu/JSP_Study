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
  	ArrayList<String> rainbow = new ArrayList<>();

	rainbow.add("red");
	rainbow.add("orange");
	rainbow.add("yellow");
	rainbow.add("green");
	rainbow.add("blue");
	rainbow.add("navy");
	rainbow.add("violet");
	
	request.setAttribute("rainbow", rainbow);
  
  %>
  
  <jsp:forward page="test02_forEach02.jsp"/>
</body>
</html>