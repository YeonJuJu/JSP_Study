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
	<h1>사칙연산</h1>
	
	${num1} + ${num2} = ${num1 + num2}<br>
	${num1} - ${num2} = ${num1 - num2}<br>
	${num1} / ${num2} = ${num1 / num2}<br>
	${num1} * ${num2} = ${num1 * num2}<br>
	
	<h1>더 큰 수</h1> 
	
	<c:if test="${num1 >= num2 }">
      ${num1 }<br>
    </c:if>
    <c:if test="${num1 < num2 }">
      ${num2 }
    </c:if>
</body>
</html>