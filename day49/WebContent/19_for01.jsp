<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 자동 import - > ctrl + shift + m  -->

<%@page import="java.text.SimpleDateFormat"%>    
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP</title>
    <style>
    	body{
    		color="blue";
    		font-size=24px;
    	}
    </style>
</head>
<body>
    <h3>오늘 날짜 출력하기</h3>
    
    <%
    	Date date = new Date();
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
    %>
    
    <%=sdf.format(date)%><br>
    
    <%
    	for(int i=0;i<=10;i+=2){
    		out.println(i + "<br>");
    	}
    
    	int i=0;
    	
    	while(i<=10){
    		if(i%2==0)
    			out.println(i + "<br>");
    		i++;
    	}
    %>
</body>
</html>