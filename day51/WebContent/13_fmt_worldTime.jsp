<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
</head>
<body>
	<c:set var="date" value="<%=new Date() %>"/>
	
	<h2>세계 시간</h2>

	서울 : <fmt:formatDate value='${date}' type="both"/><br>
	
	<fmt:setTimeZone value="Asia/Hong_Kong"/>
	홍콩 : <fmt:formatDate value='${date}' type="both"/><br>
	
	<fmt:setTimeZone value="Europe_London"/>
	런던 : <fmt:formatDate value='${date}' type="both"/><br>
	
	<fmt:setTimeZone value="America/New_York"/>
	뉴욕 : <fmt:formatDate value='${date}' type="both"/><br>
	
</body>
</html>