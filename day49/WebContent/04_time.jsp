<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.GregorianCalendar" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP</title>
</head>
<body>
    <h1>day / time</h1>
    
    <%
    	GregorianCalendar now = new GregorianCalendar();
    	String date = String.format("%TF", now);
    	String time = String.format("%TT", now);
    %>
    
    오늘 날짜 : <%= date %><br>
    현재 시각 : <%= time %><br>
</body>
</html>