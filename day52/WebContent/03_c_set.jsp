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
	<c:set var="code" value="3535" scope="request"/>
	<c:set var="title" value="토지" scope="request"/>
	<c:set var="author" value="박경리" scope="request"/>
	<c:set var="page" value="5000" scope="request"/>
	<c:set var="price" value="100000" scope="request"/>
	
	<jsp:forward page="03_c_set03.jsp"/>  
</body>
</html>