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
  <h2>애완동물들</h2>
  
  <%-- <c:forEach var="i" begin="1" end="10"></c:forEach> --%>
  
  <c:forEach var="pet" items='${animals}'>
  	${pet}<br>
  </c:forEach>
</body>
</html>