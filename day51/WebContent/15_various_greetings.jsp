<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP</title>
</head>
<body>
	  <c:set var="greeting" value="How Are You?"/>
	  ��  �� : ${greeting}<br>
	  �빮��: ${fn:toUpperCase(greeting)}<br>
	  �ҹ���: ${fn:toLowerCase(greeting)}<br>
	 Are ��ġ: ${fn:indexOf(greeting, "Are")}<br>
	  ���ں���: ${fn:replace(greeting, "Are", "Were")}<br>
	  �������: ${fn:length(greeting) }<br>
</body>
</html>