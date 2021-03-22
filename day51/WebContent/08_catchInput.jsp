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
  <!-- form tag -->
  <form action="08_catch.jsp">
  	num1: <input type="number" name="num1"><br>
  	num2: <input type="number" name="num2"><br>	
  	<input type="submit" value="입력완료">
  </form>
  
  <!-- jsp:forward, jsp:param -->
  <jsp:forward page="08_catch.jsp">
  		<jsp:param name="num1" value="10"/>
  		<jsp:param name="num2" value="2"/>
  	</jsp:forward>
</body>
</html>