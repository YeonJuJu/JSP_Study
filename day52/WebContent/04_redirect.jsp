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
	<!-- redirect 를 이용해 파라미터까지 넘기기 -->

	<c:url var="url" value="https://www.naver.com">
		<c:param name="id" value="tjoeun"/>
		<c:param name="pw" value="1234"/>
	</c:url>  
	
	<c:redirect url="${url}"/>
</body>
</html>