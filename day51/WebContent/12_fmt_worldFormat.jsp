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
	 <h2>여러 나라의 포멧</h2>
	 <h3>대한민국</h3>
	 
	 <fmt:setLocale value="ko_kr" />
	 
	 금액 : <fmt:formatNumber value="1000000" type="currency"/><br>
	 일시 : <fmt:formatDate value='${date}' type="both" dateStyle="full" timeStyle="full"/><br>
	 
	<h3>미국</h3>
	
	<fmt:setLocale value="en_us" />
	 
	 금액 : <fmt:formatNumber value="1000000" type="currency"/><br>
	 일시 : <fmt:formatDate value='${date}' type="both" dateStyle="full" timeStyle="full"/><br>
	 
	<h3>일본</h3>
	
	<fmt:setLocale value="ja_jp" />
	 
	 금액 : <fmt:formatNumber value="1000000" type="currency"/><br>
	 일시 : <fmt:formatDate value='${date}' type="both" dateStyle="full" timeStyle="full"/><br>

	<br><hr><br>
	
	서울 : <fmt:formatDate value="${date }"  type="both"/><br>
  
	  <fmt:timeZone value="Asia/Hong_Kong"> 
	  홍콩 : <fmt:formatDate value="${date }"  type="both"/><br>
	  </fmt:timeZone> 
	  
	  <fmt:timeZone value="Europe_London"> 
	  런던 : <fmt:formatDate value="${date }"  type="both"/><br>
	  </fmt:timeZone> 
	  
	  <fmt:timeZone value="America/New_York">  
	  뉴욕 : <fmt:formatDate value="${date }"  type="both"/><br>
	  </fmt:timeZone>  

</body>
</html>