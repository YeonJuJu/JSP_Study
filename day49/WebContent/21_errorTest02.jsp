<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="21_errorMessage2.jsp"%>
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
    	String str1 = request.getParameter("num1");
    	String str2 = request.getParameter("num2");
    	
    	int num1 = Integer.parseInt(str1);
    	int num2 = Integer.parseInt(str2);
    
    	int result = num1 + num2;
    %>
    
    <h2>덧셈 프로그램</h2>
    <%=num1 %> + <%=num2 %> = <%=result %> 
</body>
</html>