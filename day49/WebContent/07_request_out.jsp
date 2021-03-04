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
    <h1>Request, Out</h1>
    
    <%
    	String str = request.getParameter("MAX");
    	int max = Integer.parseInt(str);
    	for(int i=1;i<=max;i++){
    		out.println(i + "<br>");
    	}
    %>
</body>
</html>