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
	<h2>좋아하는 동물</h2>
	
	<% request.setCharacterEncoding("UTF-8"); %>
	
	아이디 : ${param.id}<br>
	좋아하는 동물 : ${paramValues.animal[0]} ${paramValues.animal[1]} ${paramValues.animal[2]}    
</body>
</html>