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
  	<c:set var="num1" value="7"/>
  	<c:set var="num2" value="9"/>
  	<c:set var="result" value='${num1 * num2}'/>
  	<h2>JSTL core 곱셈</h2>
  	${num1} 과 ${num2} 의 곱 : ${result}
</body>
</html>