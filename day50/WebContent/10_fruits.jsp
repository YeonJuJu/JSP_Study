<%@page import="java.util.ArrayList"%>
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
		ArrayList<String> fruits = new ArrayList<>();
		fruits.add(new String("딸기"));
		fruits.add(new String("포도"));
		fruits.add(new String("바나나"));
		fruits.add(new String("복숭아"));
		fruits.add("수박");
		
		request.setAttribute("fruits", fruits);
		
		RequestDispatcher rd = request.getRequestDispatcher("10_fruitsList.jsp");
		
		rd.forward(request, response);
	%>    
</body>
</html>