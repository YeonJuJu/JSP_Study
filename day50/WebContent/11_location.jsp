<%@page import="java.util.HashMap"%>
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
    <h2>지역</h2>
    
    <%
    	HashMap<String, String> map = new HashMap<>();
    
    	map.put("이순신", "서울");
    	map.put("김유신", "경주");
    	map.put("안중근", "해주");
    	
    	request.setAttribute("location", map); //request 객체에 location이란 이름으로 map을 저장
    	RequestDispatcher rd = request.getRequestDispatcher("11_locationList.jsp?name=이순신");
    	rd.forward(request, response);
    %>
</body>
</html>