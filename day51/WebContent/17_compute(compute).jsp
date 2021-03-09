<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
  <style>
  	body{font-family:D2Coding;}
  </style>
</head>
<body>
  <util:compute end="10" var="k" start="1">
  	<h2>${k}의 제곱 : ${k*k}</h2>
  </util:compute>
</body>
</html>