<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename='intro'/>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><fmt:message key="title"/></title>
</head>
<body>
	<fmt:setLocale value="en"/>
	<fmt:setBundle basename="intro"/>
  	<h3><fmt:message key="title"/></h3>
  	<fmt:message key="greeting"/><br><br>
  	<fmt:message key="body"/><br><br>
  	<font size=2><fmt:message key="company"/></font>
  	
  	<fmt:setLocale value="ja"/>
	<fmt:setBundle basename="intro"/>
  	<h3><fmt:message key="title"/></h3>
  	<fmt:message key="greeting"/><br><br>
  	<fmt:message key="body"/><br><br>
  	<font size=2><fmt:message key="company"/></font>
</body>
</html>