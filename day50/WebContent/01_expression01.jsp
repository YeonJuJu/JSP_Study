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
    	int sum = 0;
    
    	for(int i=1;i<=100;i++){
    		sum+=i;
    	}
    	
    	request.setAttribute("result", new Integer(sum));
    	
    	RequestDispatcher rd = request.getRequestDispatcher("01_expression02.jsp");
    	
    	rd.forward(request, response);
    %>
    
</body>
</html>