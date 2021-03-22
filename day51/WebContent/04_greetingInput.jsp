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
  		int num=0;
  	%>
  	
  	greeting.jsp로 forwarding 하기
  	
  	<!-- <form action="04_greeting.jsp">
  		숫자를 입력하세요 (0, 1, 2) :
  		
  		<input type="number" name="num"><br>
  		
  		<input type="submit" value="입력완료">
  		
  	</form> -->
  	
  	<jsp:forward page="04_greeting.jsp">
  		<jsp:param name="num" value="1"/>
  	</jsp:forward>
</body>
</html>