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
	 <h2>���� ������ ����</h2>
	 <h3>���ѹα�</h3>
	 
	 <fmt:setLocale value="ko_kr" />
	 
	 �ݾ� : <fmt:formatNumber value="1000000" type="currency"/><br>
	 �Ͻ� : <fmt:formatDate value='${date}' type="both" dateStyle="full" timeStyle="full"/><br>
	 
	<h3>�̱�</h3>
	
	<fmt:setLocale value="en_us" />
	 
	 �ݾ� : <fmt:formatNumber value="1000000" type="currency"/><br>
	 �Ͻ� : <fmt:formatDate value='${date}' type="both" dateStyle="full" timeStyle="full"/><br>
	 
	<h3>�Ϻ�</h3>
	
	<fmt:setLocale value="ja_jp" />
	 
	 �ݾ� : <fmt:formatNumber value="1000000" type="currency"/><br>
	 �Ͻ� : <fmt:formatDate value='${date}' type="both" dateStyle="full" timeStyle="full"/><br>

	<br><hr><br>
	
	���� : <fmt:formatDate value="${date }"  type="both"/><br>
  
	  <fmt:timeZone value="Asia/Hong_Kong"> 
	  ȫ�� : <fmt:formatDate value="${date }"  type="both"/><br>
	  </fmt:timeZone> 
	  
	  <fmt:timeZone value="Europe_London"> 
	  ���� : <fmt:formatDate value="${date }"  type="both"/><br>
	  </fmt:timeZone> 
	  
	  <fmt:timeZone value="America/New_York">  
	  ���� : <fmt:formatDate value="${date }"  type="both"/><br>
	  </fmt:timeZone>  

</body>
</html>