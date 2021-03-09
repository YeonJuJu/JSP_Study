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
	<c:forEach var="col" items='${colors}'>
		<h3><font color="${col}">${col}</font></h3>
	</c:forEach>
	
	<hr>
	
	<c:forEach var="count" begin="1" end="7" step="2">
		<font size='${count}'>font-size ${count} : 안녕 ~~ </font><br>
	</c:forEach>
</body>
</html>