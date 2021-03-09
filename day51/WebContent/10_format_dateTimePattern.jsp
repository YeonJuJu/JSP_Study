<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%=new Date()%>"/>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
</head>
<body>
	<h2>현재 시각</h2>
	[오늘의 날짜] <fmt:formatDate value="${date}"/><br> <!-- 디폴트 값은 날짜 -->
	[현재의 시각] <fmt:formatDate value="${date}" type="time"/><br> <!-- 시간을 사용하기 위해서는 type 을 지정 -->

	<br><hr><br>
	
	[S] <fmt:formatDate value='${date}' type='both' dateStyle='short' timeStyle='short'/><br>
	[M] <fmt:formatDate value='${date}' type='both' dateStyle='medium' timeStyle='medium'/><br>
	[N] <fmt:formatDate value='${date}' type='both' dateStyle='long' timeStyle='long'/><br>
	[T] <fmt:formatDate value='${date}' type='both' dateStyle='full' timeStyle='full'/><br>
	
	<br><hr><br>
	
	[오늘의 날짜] <fmt:formatDate value="${date}" pattern="yyyy/MM/dd (E)"/><br> <!-- (E) -> 요일 -->
	[현재의 시각] <fmt:formatDate value="${date}" type="time" pattern="(a) hh:mm:ss"/><br> <!-- (ㅁ) -> 오전오후 -->
</body>
</html>