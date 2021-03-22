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
    <h2>우승자 명단</h2>
    
    <%
    	String[] winners = new String[3];
    
    	winners[0] = "이순신";
    	winners[1] = "김유신";
    	winners[2] = "안중근";
    
    	request.setAttribute("winners", winners);
    	
    	RequestDispatcher rd = request.getRequestDispatcher("09_winnerList.jsp");
    	
    	rd.forward(request, response);
    %>
</body>
</html>