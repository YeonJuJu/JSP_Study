<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
		int sum=0;
		for(int i=1;i<=1000;i++){
			sum+=i;
		}
		pageContext.setAttribute("result", new Integer(sum));
		
		
	
%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP</title>
</head>
<body>
	1부터 1000까지의 합 : ${result}
</body>
</html>