<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page info = "Page 내장 객체" %>
    
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
	    	String info = this.getServletInfo();
	    	
	    %>
	    
	    <h2>Page 내장 객체</h2>
	    page 디렉티브 info 속성 값 : <%=info %>
</body>
</html>