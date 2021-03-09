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
  	<%
  		int num1=3, num2=4;
  	%>
  	
  	maxNumber.jsp로 forwarding 하기
  	
  	<jsp:forward page="03_maxNumber.jsp">
  		<jsp:param name="num1" value="<%=num1%>"/>
  		<jsp:param name="num2" value="<%=num2%>"/>
  	</jsp:forward>
</body>
</html>