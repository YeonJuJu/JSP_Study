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
	<h2> �ִ� ���ϱ� </h2>
	
	<c:if test='${param.num1-param.num2 >= 0}'>
		${param.num1}
	</c:if>
	<c:if test='${param.num1-param.num2 < 0}'>
		${param.num2}
	</c:if>
	 
</body>
</html>