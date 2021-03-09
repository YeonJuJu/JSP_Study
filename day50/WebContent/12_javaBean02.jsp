<%@page import="el.Thermometer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
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
    	Thermometer th = new Thermometer();
    	request.setAttribute("th", th);
    
    %>
    
    ${th.setCel(param.loc, param.value)}
    <h3>${param.loc} 의 섭씨온도, 화씨온도</h3>
    
    섭씨온도 : ${th.getCel(param.loc)}<br>
    화씨온도 : ${th.getFar(param.loc)}<br>
</body>
</html>