<%@page import="com.tjoeun.jsp.model.RentCarDAO"%>
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
		int reserveno = Integer.parseInt(request.getParameter("reserveno"));
	
		RentCarDAO dao = RentCarDAO.getInstance();
		dao.deleteReserve(reserveno);
		
		response.sendRedirect("rentCar.jsp");
	%>    
</body>
</html>