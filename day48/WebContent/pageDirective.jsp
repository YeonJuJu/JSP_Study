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
    <h1>page directive</h1>
    
    <%
    	int num1 = 10;
    	
    	for(int i=1;i<=10;i++){
    		System.out.println(i);
    	}
    	
    	for(int i=1;i<=10;i++){
    %> 
    
    	<%=i %>
    <%
    	}
    %>
</body>
</html>