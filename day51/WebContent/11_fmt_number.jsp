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
  <h2>���� ����</h2>
  number1 : <fmt:formatNumber value = "1234500" groupingUsed="true"/><br>
  number2 : <fmt:formatNumber value = "3.14159" pattern="#.##"/><br>
  number3 : <fmt:formatNumber value = "1234500" pattern="#.00"/><br>
  
  ��	 �� : <fmt:formatNumber value = "1000000" type="currency" currencySymbol="��"/><br>
  �� �� Ʈ : <fmt:formatNumber value = "0.99" type="percent"/><br>
</body>
</html>