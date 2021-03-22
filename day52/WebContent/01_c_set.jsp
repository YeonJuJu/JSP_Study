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
  <%-- <c:set var="num1" value="12" scope="request"/>
  <c:set var="num2" value="37" scope="request"/>
  
  <jsp:forward page="01_c_set02.jsp"/> --%>
  
  <%
  	//request 객체에 data 를 저장
  	int num1 = 12, num2 = 36;
  	
  	request.setAttribute("num1", num1);
    request.setAttribute("num2", num2);
  
    //RequestDispatcher 의 forward() 메소드 사용
    RequestDispatcher rd = request.getRequestDispatcher("01_c_set02.jsp");
    rd.forward(request, response);
  %>
</body>
</html>