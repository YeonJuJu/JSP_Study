<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.GregorianCalendar"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP</title>
</head>
<body>
    <%
    	GregorianCalendar now = new GregorianCalendar();
    %>
    
    <%= String.format("%TY년 %Tm월 %Td일", now, now, now) %>
</body>
</html>