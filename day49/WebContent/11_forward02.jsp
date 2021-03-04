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
		String n1 = request.getParameter("num1");
		String n2 = request.getParameter("num2");
	
		int num1 = Integer.parseInt(n1);
		int num2 = Integer.parseInt(n2);
		
		request.setAttribute("sum", new Integer(num1+num2));
		request.setAttribute("difference", new Integer(num1-num2));
		request.setAttribute("product", new Integer(num1*num2));
		request.setAttribute("quotient", new Integer(num1/num2));
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("11_forward03.jsp");
		dispatcher.forward(request, response);
	%>    
</body>
</html>