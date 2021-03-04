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
		request.setCharacterEncoding("utf-8");
	
		String name = request.getParameter("name");
		String local = request.getParameter("local");
		String tel = request.getParameter("tel");
		
		String localNum="";
		
		switch(local){
		case "서울":
			localNum="02";
			break;
		case "경기":
			localNum="031";
			break;
		case "강원":
			localNum="033";
			break;
		}
		
		out.println(name + "님의 전화번호는 "+ localNum+")"+tel);
	%>    
</body>
</html>