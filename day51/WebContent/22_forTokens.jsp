<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
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
  	String file = application.getRealPath("/jstl_core/forEach.txt");
  	BufferedReader br = new BufferedReader(new FileReader(file));
	String colors = br.readLine(); 
	br.close();
  %>
  
  <c:forTokens var="color" items="<%=colors%>" delims=",">
  	<font size="5" color="${color}">더조은</font><br>
  </c:forTokens>
</body>
</html>