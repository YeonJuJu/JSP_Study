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
	  원  본 : ${greeting}<br>
	  대문자: ${fn:toUpperCase(greeting)}<br>
	  소문자: ${fn:toLowerCase(greeting)}<br>
	 Are 위치: ${fn:indexOf(greeting, "Are")}<br>
	  글자변경: ${fn:replace(greeting, "Are", "Were")}<br>
	  문장길이: ${fn:length(greeting) }<br>
</body>
</html>