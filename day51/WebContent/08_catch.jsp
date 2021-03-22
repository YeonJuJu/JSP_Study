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
<!-- 	http://localhost:8070/day51/08_catch.jsp?num1=10&num2=2 -->

  <%
  	String str1 = request.getParameter("num1");
  	String str2 = request.getParameter("num2");
  	
  	int num1=Integer.parseInt(str1);
  	int num2=Integer.parseInt(str2);
  %>
  
  <h2>나눗셈</h2>
  
  <c:catch var="e">
  	<% int result = num1 / num2; %>
  	계산 결과 : <%=result%>
  </c:catch>
  
  <c:if test="${e != null }">
    에러 메세지 : ${e.message }
  </c:if>
</body>
</html>