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
	<h2>Greeting</h2>  
	
	<c:choose>
		<c:when test = "${param.num==0}">
			처음 뵙겠습니다<br>
		</c:when>
		<c:when test = "${param.num==1}">
			반갑습니다<br>
		</c:when>
		<c:otherwise>
			안녕하세요<br>
		</c:otherwise>
	</c:choose>
		
</body>
</html>